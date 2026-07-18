#!/bin/sh
# ============================================================================
# mtmips.sh - Build U-Boot for MediaTek MT7620/MT7621/MT7628/MT7688 (MIPS)
#
# Usage:
#   SOC=<mt7620|mt7621|mt7628|mt7688> BOARD=<board_name> [VERSION=2025] ./mtmips.sh
#
# Examples:
#   SOC=mt7620 BOARD=rfb              ./mtmips.sh
#   SOC=mt7621 BOARD=rfb              ./mtmips.sh
#   SOC=mt7628 BOARD=rfb              ./mtmips.sh
#   SOC=mt7688 BOARD=rfb              ./mtmips.sh
#
# Note: mt7628 and mt7688 share the same mt76x8 toolchain.
#
# Description:
#   This script builds U-Boot for MediaTek MIPS-based SoCs (MT7620, MT7621,
#   MT7628, MT7688) using the OpenWrt toolchain (mipsel-openwrt-linux-).
#   If the toolchain is not found locally, the script offers to download it
#   automatically from the OpenWrt release archives. The toolchain is placed
#   in the same directory as the U-Boot source tree.
#
# Environment variables:
#   SOC           Target SoC (required: mt7620, mt7621, mt7628, mt7688)
#   BOARD         Target board name (required)
#   VERSION       U-Boot version to build (default: 2025 → uboot-mtk-20250711)
#   TOOLCHAIN     Cross-compiler prefix (auto-detected if empty)
#   JOBS          Parallel make jobs (default: nproc)
#   STAGING_DIR   Staging directory (passed to make)
#
# Output:
#   output_<soc>/<soc>-u-boot-<board>-<version>_md5-<hash>.bin
# ============================================================================

set -e

VERSION=${VERSION:-2025}
SOC="${SOC:-mt7628}"
BOARD="${BOARD:-rfb}"

# ---------------------------------------------------------------------------
# --help / -h
# ---------------------------------------------------------------------------
show_help() {
	cat <<'EOF'
Usage: SOC=<mt7620|mt7621|mt7628|mt7688> BOARD=<board_name> [VERSION=2025] ./mtmips.sh

Build U-Boot for MediaTek MT7620/MT7621/MT7628/MT7688 (MIPS) platform.

Note: mt7628 and mt7688 share the same mt76x8 toolchain.

Required:
  SOC=<mt7620|mt7621|mt7628|mt7688>   Target SoC
  BOARD=<board>           Target board name (matches defconfig: ${SOC}_${BOARD}_defconfig)

Options:
  VERSION=2025    U-Boot version (default: 2025 → uboot-mtk-20250711)
  TOOLCHAIN=...   Cross-compiler prefix (auto-detected from ./openwrt*/toolchain-mipsel*)
  JOBS=<n>        Parallel make jobs (default: nproc)
  STAGING_DIR=... Staging directory (auto-detected from TOOLCHAIN)

Examples:
  SOC=mt7620 BOARD=rfb                     ./mtmips.sh
  SOC=mt7621 BOARD=rfb                     ./mtmips.sh
  SOC=mt7621 BOARD=rfb                     ./mtmips.sh
  SOC=mt7628 BOARD=rfb                     ./mtmips.sh
  SOC=mt7688 BOARD=rfb                     ./mtmips.sh
EOF
}

case "${1:-}" in
	--help|-h|help)
		show_help
		exit 0
		;;
esac

# ---------------------------------------------------------------------------
# Validate SOC
# ---------------------------------------------------------------------------
if [ -z "$SOC" ]; then
	echo "Usage: SOC=<mt7620|mt7621|mt7628|mt7688> BOARD=<board_name> [VERSION=2025] $0"
	echo "Try '$0 --help' for more information."
	exit 1
fi

# Map SOC to OpenWrt toolchain target (mt7628/mt7688 both use mt76x8 toolchain)
case "$SOC" in
	mt7620)
		TOOLCHAIN_SOC="mt7620"
		TOOLCHAIN_URL_NAME="ramips-mt7620"
		TOOLCHAIN_PATTERN="openwrt*mt7620*"
		;;
	mt7621)
		TOOLCHAIN_SOC="mt7621"
		TOOLCHAIN_URL_NAME="ramips-mt7621"
		TOOLCHAIN_PATTERN="openwrt*mt7621*"
		;;
	mt7628|mt7688)
		TOOLCHAIN_SOC="mt76x8"
		TOOLCHAIN_URL_NAME="ramips-mt76x8"
		TOOLCHAIN_PATTERN="openwrt*mt76x8*"
		;;
	*)
		echo "Error: Unsupported SOC='$SOC'. Valid values: mt7620, mt7621, mt7628, mt7688"
		exit 1
		;;
esac

if [ -z "$BOARD" ]; then
	echo "Usage: SOC=${SOC} BOARD=<board_name> [VERSION=2025] $0"
	echo "Try '$0 --help' for more information."
	exit 1
fi

# ---------------------------------------------------------------------------
# VERSION-based U-Boot directory selection
# ---------------------------------------------------------------------------
if [ "$VERSION" = "2025" ]; then
	UBOOT_DIR=uboot-mtk-20250711
else
	echo "Error: Unsupported VERSION='$VERSION'. Please specify VERSION=2025."
	exit 1
fi

OUTPUT_DIR="output_mtmips"

die()
{
	echo "Error: $*"
	exit 1
}

# Read a CONFIG_ value from the generated .config
get_config()
{
	grep -oP "^CONFIG_$1=\K.*" "$UBOOT_DIR/.config" 2>/dev/null || true
}

# URL of the prebuilt OpenWrt toolchain (can be overridden by env)
TOOLCHAIN_URL="${TOOLCHAIN_URL:-https://downloads.openwrt.org/releases/25.12.5/targets/ramips/${TOOLCHAIN_SOC}/openwrt-toolchain-25.12.5-${TOOLCHAIN_URL_NAME}_gcc-14.3.0_musl.Linux-x86_64.tar.zst}"

# ---------------------------------------------------------------------------
# Auto-detect or download toolchain (same directory as U-Boot source)
# ---------------------------------------------------------------------------
TOOLCHAIN_BIN=$(cd ./${TOOLCHAIN_PATTERN}/toolchain-mipsel*/bin 2>/dev/null && pwd || true)
if [ -z "$TOOLCHAIN_BIN" ]; then
	echo "Toolchain not found in current directory."
	echo "Looking for: ./${TOOLCHAIN_PATTERN}/toolchain-mipsel*/bin"
	read -p "Download it now? [Y/n] " dlcc
	dlcc=${dlcc:-Y}
	case "$dlcc" in
		[Yy]* )
			echo "Downloading toolchain from: $TOOLCHAIN_URL"
			if command -v wget >/dev/null 2>&1; then
				wget -O - "$TOOLCHAIN_URL" | tar --zstd -xf - || die "Toolchain download failed."
			elif command -v curl >/dev/null 2>&1; then
				curl -L "$TOOLCHAIN_URL" | tar --zstd -xf - || die "Toolchain download failed."
			else
				die "Neither wget nor curl found. Install one or download manually: $TOOLCHAIN_URL"
			fi
			TOOLCHAIN_BIN=$(cd ./${TOOLCHAIN_PATTERN}/toolchain-mipsel*/bin 2>/dev/null && pwd || true)
			[ -n "$TOOLCHAIN_BIN" ] || die "Toolchain not found after extraction."
			;;
		* )
			die "Toolchain required. Set TOOLCHAIN=... or place ${TOOLCHAIN_PATTERN}/toolchain-mipsel*/ in current directory."
			;;
	esac
fi

TOOLCHAIN="${TOOLCHAIN_BIN}/mipsel-openwrt-linux-"
Staging="${TOOLCHAIN_BIN%/bin}"
Staging="${Staging%/toolchain-*}"

# ---------------------------------------------------------------------------
# Build config
# ---------------------------------------------------------------------------
UBOOT_CFG="${SOC}_${BOARD}_defconfig"

# ---------------------------------------------------------------------------
# Environment checks
# ---------------------------------------------------------------------------
echo "======================================================================"
echo "MTMIPS U-Boot Build (${SOC})"
echo "======================================================================"

command -v python3 >/dev/null 2>&1 || die "Python 3 is not installed."
command -v "${TOOLCHAIN}gcc" >/dev/null 2>&1 || die "${TOOLCHAIN}gcc not found!"

[ -d "$UBOOT_DIR" ] || die "U-Boot directory '$UBOOT_DIR' not found!"
[ -f "$UBOOT_DIR/configs/$UBOOT_CFG" ] || die "Defconfig not found: $UBOOT_DIR/configs/$UBOOT_CFG"

echo "VERSION:       $VERSION"
echo "SOC:           $SOC"
echo "BOARD:         $BOARD"
echo "U-Boot Dir:    $UBOOT_DIR"
echo "Toolchain:     $TOOLCHAIN"
echo "STAGING_DIR:   $Staging"
echo "Defconfig:     $UBOOT_CFG"

# ---------------------------------------------------------------------------
# Parallel jobs
# ---------------------------------------------------------------------------
if [ -z "$JOBS" ]; then
	if command -v nproc >/dev/null 2>&1; then
		JOBS=$(nproc)
	else
		JOBS=1
	fi
fi

# ---------------------------------------------------------------------------
# Build
# ---------------------------------------------------------------------------
echo "======================================================================"
echo "Building U-Boot..."
echo "======================================================================"

rm -f "$UBOOT_DIR/u-boot.bin" "$UBOOT_DIR/u-boot-with-spl.bin"
cp -f "$UBOOT_DIR/configs/$UBOOT_CFG" "$UBOOT_DIR/.config"
make -C "$UBOOT_DIR" olddefconfig
make -C "$UBOOT_DIR" clean
make -C "$UBOOT_DIR" CROSS_COMPILE="${TOOLCHAIN}" STAGING_DIR="${Staging}" -j "$JOBS" all

# Determine output image: respect CONFIG_BUILD_TARGET (e.g. u-boot-with-spl.bin for SPL builds)
UBOOT_BIN=$(get_config "BUILD_TARGET")
UBOOT_BIN=$(echo "$UBOOT_BIN" | tr -d '"')
[ -n "$UBOOT_BIN" ] || UBOOT_BIN="u-boot.bin"

[ -f "$UBOOT_DIR/$UBOOT_BIN" ] || die "U-Boot build failed! $UBOOT_BIN not generated."
echo "U-Boot build done! (image: $UBOOT_BIN)"

# ---------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------
echo "======================================================================"
echo "Copying output files..."
echo "======================================================================"

mkdir -p "$OUTPUT_DIR"

MD5SUM=$(md5sum "$UBOOT_DIR/$UBOOT_BIN" | awk '{print $1}')
echo "$UBOOT_BIN md5: $MD5SUM"

UBOOTNAME="${SOC}-u-boot-${BOARD}-${VERSION}_md5-${MD5SUM}.bin"
cp -f "$UBOOT_DIR/$UBOOT_BIN" "$OUTPUT_DIR/$UBOOTNAME"

echo "${SOC}-u-boot-${BOARD}-${VERSION} build done"
echo "Output: $OUTPUT_DIR/$UBOOTNAME"
