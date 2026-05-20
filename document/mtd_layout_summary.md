# MT798 MTD Layout Summary

Generated: 2026-05-16 10:59:05

This document collects MTK partition tables from configs and device-tree `mtd-layout` nodes.

Boards with `CONFIG_MTK_BOOTMENU_MMC=y` are skipped.

## MT7981 Platform

### default

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs/mt7981_360t7_defconfig` | 360t7 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),108M(ubi),1M(stock-config),512k(stock-factory),4M(stock-log) | mt7981-spim-nand-rfb |
| `configs/mt7981_abt_asr3000_defconfig` | abt_asr3000 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_ax3000t_an8855_defconfig` | ax3000t_an8855 | nmbm0=nmbm0 | nmbm0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs/mt7981_ax3000t_defconfig` | ax3000t | nmbm0=nmbm0 | nmbm0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs/mt7981_bt_rb300_defconfig` | bt_rb300 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_cetron_ct3003_defconfig` | cetron_ct3003 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_clt_r30b1_defconfig` | clt_r30b1 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),64M(ubi),32M(data) | mt7981-spim-nand-rfb |
| `configs/mt7981_cmcc_a10-256m_defconfig` | cmcc_a10-256m | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),235520k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_cmcc_a10_defconfig` | cmcc_a10 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_cmcc_rax3000m_defconfig` | cmcc_rax3000m | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114M(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_cmcc_xr30_defconfig` | cmcc_xr30 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114M(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_comfast_cf-wr632ax_defconfig` | comfast_cf-wr632ax | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_cudy_tr3000-v1_defconfig` | cudy_tr3000-v1 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),256k(bdinfo),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_glinet_gl-mt3000_defconfig` | glinet_gl-mt3000 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),256k(log),252160k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_gmac2_spim_nand_rfb_defconfig` | gmac2_spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_h3c_magic-nx30-pro_defconfig` | h3c_magic-nx30-pro | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),6144k(pdt_data),6144k(pdt_data_1),1024k(exp),38400k(plugin) | mt7981-spim-nand-rfb |
| `configs/mt7981_honor_fur-602_defconfig` | honor_fur-602 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),1920k(factory),128k(Trace),2048k(fip),65536k(ubi),128k(Tracebak),51200k(foxfs) | mt7981-spim-nand-rfb |
| `configs/mt7981_imou_lc-hx3001_defconfig` | imou_lc-hx3001 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_jcg_q30_defconfig` | jcg_q30 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_konka_komi-a31_defconfig` | konka_komi-a31 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_livinet_zr-3020_defconfig` | livinet_zr-3020 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),32768k(firmware_backup),1024k(zrsave),1024k(config2) | mt7981-spim-nand-rfb |
| `configs/mt7981_newland_nl-wr8103_defconfig` | newland_nl-wr8103 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_newland_nl-wr9103_defconfig` | newland_nl-wr9103 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_nokia_ea0326gmp_defconfig` | nokia_ea0326gmp | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(Config),2048k(Config2),112640k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_nor_emmc_rfb_defconfig` | nor_emmc_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),704k(factory),2048k(fip) | mt7981-nor-emmc-rfb |
| `configs/mt7981_openembed_som7981_defconfig` | openembed_som7981 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),1024k(factory),1024k(config),2048k(fip),254464k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_ruijie_rg-x30e-pro_defconfig` | ruijie_rg-x30e-pro | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs/mt7981_ruijie_rg-x30e_defconfig` | ruijie_rg-x30e | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs/mt7981_snfi_nand_rfb_defconfig` | snfi_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-snfi-nand-rfb |
| `configs/mt7981_spim_nand_rfb_defconfig` | spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_spim_nand_sb_rfb_defconfig` | spim_nand_sb_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_spim_nand_ubi_rfb_defconfig` | spim_nand_ubi_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_spim_nor_rfb_defconfig` | spim_nor_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),704k(factory),512k(fip),-(firmware) | mt7981-spim-nor-rfb |
| `configs/mt7981_tplink_wma301v2_defconfig` | tplink_wma301v2 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs/mt7981_wr30u_defconfig` | wr30u | nmbm0=nmbm0 | nmbm0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs/mt7981_zbt_z8103ax-c_defconfig` | zbt_z8103ax-c | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7981-spim-nand-rfb |

### nonmbm

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs-nonmbm/mt7981_360t7_defconfig` | 360t7 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),108M(ubi),1M(stock-config),512k(stock-factory),4M(stock-log) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_abt_asr3000_defconfig` | abt_asr3000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_ax3000t_an8855_defconfig` | ax3000t_an8855 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_ax3000t_defconfig` | ax3000t | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_bt_rb300_defconfig` | bt_rb300 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cetron_ct3003_defconfig` | cetron_ct3003 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_clt_r30b1_defconfig` | clt_r30b1 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),64M(ubi),32M(data) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cmcc_a10-256m_defconfig` | cmcc_a10-256m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),235520k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cmcc_a10_defconfig` | cmcc_a10 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cmcc_rax3000m_defconfig` | cmcc_rax3000m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114M(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cmcc_xr30_defconfig` | cmcc_xr30 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114M(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_comfast_cf-wr632ax_defconfig` | comfast_cf-wr632ax | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_cudy_tr3000-v1_defconfig` | cudy_tr3000-v1 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),256k(bdinfo),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_glinet_gl-mt3000_defconfig` | glinet_gl-mt3000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),256k(log),252160k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_h3c_magic-nx30-pro_defconfig` | h3c_magic-nx30-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),6144k(pdt_data),6144k(pdt_data_1),1024k(exp),38400k(plugin) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_honor_fur-602_defconfig` | honor_fur-602 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1920k(factory),128k(Trace),2048k(fip),65536k(ubi),128k(Tracebak),51200k(foxfs) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_imou_lc-hx3001_defconfig` | imou_lc-hx3001 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_jcg_q30_defconfig` | jcg_q30 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),113152k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_konka_komi-a31_defconfig` | konka_komi-a31 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114688k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_livinet_zr-3020_defconfig` | livinet_zr-3020 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),32768k(firmware_backup),1024k(zrsave),1024k(config2) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_newland_nl-wr8103_defconfig` | newland_nl-wr8103 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_newland_nl-wr9103_defconfig` | newland_nl-wr9103 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_nokia_ea0326gmp_defconfig` | nokia_ea0326gmp | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(Config),2048k(Config2),112640k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_openembed_som7981_defconfig` | openembed_som7981 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(factory),1024k(config),2048k(fip),254464k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_ruijie_rg-x30e-pro_defconfig` | ruijie_rg-x30e-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_ruijie_rg-x30e_defconfig` | ruijie_rg-x30e | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_tplink_wma301v2_defconfig` | tplink_wma301v2 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),116736k(ubi) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_wr30u_defconfig` | wr30u | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-nonmbm/mt7981_zbt_z8103ax-c_defconfig` | zbt_z8103ax-c | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7981-spim-nand-rfb |

### multi_layout

| Source | Model | Layout | MTDIDS | MTDPARTS | Boot Part | Factory Part | Sysupgrade Kernel | Sysupgrade Rootfs |
|---|---|---|---|---|---|---|---|---|
| `nonmbm/mt7981-ax3000t.dts` | ax3000t | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),34816k(ubi_kernel),79872k(ubi),256k(KF) | - | - | - | - |
|  |  | immortalwrt-112m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | - | - | - | - |
|  |  | qwrt | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),100m(ubi),12m(data),256k(KF) | - | - | - | - |
| `nonmbm/mt7981-clt-r30b1.dts` | clt-r30b1 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),64M(ubi),32M(data) | - | - | - | - |
|  |  | immortalwrt-112m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),112M(ubi) | - | - | - | - |
|  |  | qwrt | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),1024k(rsv0),110M(ubi) | - | - | - | - |
| `nonmbm/mt7981-cmcc_a10.dts` | cmcc_a10 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),114688k(ubi) | - | - | - | - |
|  |  | expand(114m) | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),116736k(ubi) | - | - | - | - |
|  |  | qwrt | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),1024k(rsv0),110M(ubi) | - | - | - | - |
|  |  | stock | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),1024k(rsv0),65536k(ubi) | - | - | - | - |
| `nonmbm/mt7981-comfast_cf-wr632ax.dts` | comfast_cf-wr632ax | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | - | - | - | - |
|  |  | mod-112m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),112m(ubi) | - | - | - | - |
|  |  | mod-114m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),114m(ubi) | - | - | - | - |
| `nonmbm/mt7981-h3c_magic-nx30-pro.dts` | h3c_magic-nx30-pro | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),6144k(pdt_data),6144k(pdt_data_1),1024k(exp),38400k(plugin) | - | - | - | - |
|  |  | immortalwrt-112m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),112M(ubi) | - | - | - | - |
| `nonmbm/mt7981-honor_fur-602.dts` | honor_fur-602 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1920k(factory),128k(Trace),2048k(fip),65536k(ubi),128k(Tracebak),51200k(foxfs) | - | - | - | - |
|  |  | expand(114m) | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1920k(factory),128k(Trace),2048k(fip),116736k(ubi) | - | - | - | - |
| `nonmbm/mt7981-newland_nl-wr8103.dts` | newland_nl-wr8103 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),49152k(ubi),49152k(ubi1) | - | - | - | - |
|  |  | expand(114m) | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | - | - | - | - |
| `nonmbm/mt7981-newland_nl-wr9103.dts` | newland_nl-wr9103 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | - | - | - | - |
|  |  | expand(114m) | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),116736k(ubi) | - | - | - | - |
| `nonmbm/mt7981-ruijie-rg-x30e.dtsi` | ruijie-rg-x30e | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | firmware | firmware | firmware | firmware |
|  |  | stock-firmware2 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | firmware2 | firmware2 | firmware2 | firmware2 |
|  |  | openwrt-firmware | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(ubi),35328k(ubi2),43520k(backup) | ubi | ubi | ubi | ubi |
|  |  | openwrt-firmware2 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(ubi),35328k(ubi2),43520k(backup) | ubi2 | ubi2 | ubi2 | ubi2 |
|  |  | openwrt-firmware-combined | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),114176k(ubi) | ubi | ubi | ubi | ubi |
| `nonmbm/mt7981-wr30u.dts` | wr30u | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),34816k(ubi_kernel),79872k(ubi),256k(KF) | - | - | - | - |
|  |  | immortalwrt-112m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | - | - | - | - |
|  |  | qwrt | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),1024k(rsv0),110m(ubi) | - | - | - | - |
| `nonmbm/mt7981-zbt-z8103ax-c.dts` | zbt-z8103ax-c | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),117248k(ubi) | - | - | - | - |
|  |  | ubi-64m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi) | - | - | - | - |

### ubootmod

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs-fit/mt7981_360t7_defconfig` | 360t7 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),108M(ubi),1M(stock-config),512k(stock-factory),4M(stock-log) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_abt_asr3000_defconfig` | abt_asr3000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_ax3000t_an8855_defconfig` | ax3000t_an8855 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_ax3000t_defconfig` | ax3000t | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_bt_rb300_defconfig` | bt_rb300 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cetron_ct3003_defconfig` | cetron_ct3003 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_clt_r30b1_defconfig` | clt_r30b1 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),64M(ubi),32M(data) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cmcc_a10-256m_defconfig` | cmcc_a10-256m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cmcc_a10_defconfig` | cmcc_a10 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cmcc_rax3000m_defconfig` | cmcc_rax3000m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cmcc_xr30_defconfig` | cmcc_xr30 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_comfast_cf-wr632ax_defconfig` | comfast_cf-wr632ax | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_cudy_tr3000-v1_defconfig` | cudy_tr3000-v1 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),256k(bdinfo),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_glinet_gl-mt3000_defconfig` | glinet_gl-mt3000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),256k(log),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_h3c_magic-nx30-pro_defconfig` | h3c_magic-nx30-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),6144k(pdt_data),6144k(pdt_data_1),1024k(exp),38400k(plugin) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_honor_fur-602_defconfig` | honor_fur-602 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1920k(factory),128k(Trace),2048k(fip),65536k(ubi),128k(Tracebak),51200k(foxfs) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_imou_lc-hx3001_defconfig` | imou_lc-hx3001 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_jcg_q30_defconfig` | jcg_q30 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_konka_komi-a31_defconfig` | konka_komi-a31 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_livinet_zr-3020_defconfig` | livinet_zr-3020 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),65536k(ubi),32768k(firmware_backup),1024k(zrsave),1024k(config2) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_newland_nl-wr8103_defconfig` | newland_nl-wr8103 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_newland_nl-wr9103_defconfig` | newland_nl-wr9103 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_nokia_ea0326gmp_defconfig` | nokia_ea0326gmp | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(Config),2048k(Config2),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_openembed_som7981_defconfig` | openembed_som7981 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(factory),1024k(config),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_ruijie_rg-x30e-pro_defconfig` | ruijie_rg-x30e-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_ruijie_rg-x30e_defconfig` | ruijie_rg-x30e | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),2048k(fip2),512k(product_info),512k(kdump),35328k(firmware),35328k(firmware2),43520k(backup) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_tplink_wma301v2_defconfig` | tplink_wma301v2 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),1024k(art),1024k(Factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_wr30u_defconfig` | wr30u | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112m(ubi),256k(KF) | mt7981-spim-nand-rfb |
| `configs-fit/mt7981_zbt_z8103ax-c_defconfig` | zbt_z8103ax-c | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7981-spim-nand-rfb |

## MT7986 Platform

### default

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs/mt7986_gmac2_spim_nand_rfb_defconfig` | gmac2_spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7986a-gmac2-spim-nand-rfb |
| `configs/mt7986_netcore_n60-pro_defconfig` | netcore_n60-pro | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_netcore_n60_defconfig` | netcore_n60 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_nmbm_snfi_nand_sb_rfb_defconfig` | nmbm_snfi_nand_sb_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7986a-snfi-nand-rfb |
| `configs/mt7986_nor_emmc_rfb_defconfig` | nor_emmc_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),704k(factory),2048k(fip) | mt7986a-spim-nor-rfb |
| `configs/mt7986_redmi_ax6000-512m_defconfig` | redmi_ax6000-512m | nmbm0=nmbm0 | nmbm0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112640k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_redmi_ax6000_defconfig` | redmi_ax6000 | nmbm0=nmbm0 | nmbm0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112640k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_ruijie_ew-6000gx-pro_defconfig` | ruijie_ew-6000gx-pro | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_ruijie_rg-x60-new_defconfig` | ruijie_rg-x60-new | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_ruijie_rg-x60-pro_defconfig` | ruijie_rg-x60-pro | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),64512k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_ruijie_rg-x60_defconfig` | ruijie_rg-x60 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_snfi_nand_rfb_defconfig` | snfi_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7986a-snfi-nand-rfb |
| `configs/mt7986_spim_nand_rfb_defconfig` | spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_spim_nand_sb_rfb_defconfig` | spim_nand_sb_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),65536k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_spim_nand_ubi_rfb_defconfig` | spim_nand_ubi_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_spim_nor_rfb_defconfig` | spim_nor_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),704k(factory),512k(fip),-(firmware) | mt7986a-spim-nor-rfb |
| `configs/mt7986_tplink_tl-xdr608x_defconfig` | tplink_tl-xdr608x | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),384k(config),640k(factory),1024k(reserved),512k(u-boot-env),1536k(fip),117760k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_tplink_tl-xtr8488_defconfig` | tplink_tl-xtr8488 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(config),256k(factory),2048k(reserved),2048k(fip),122880k(ubi) | mt7986a-spim-nand-rfb |
| `configs/mt7986_zyxel_ex5700_defconfig` | zyxel_ex5700 | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),485888k(ubi) | mt7986a-spim-nand-rfb |

### nonmbm

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs-nonmbm/mt7986_netcore_n60-pro_defconfig` | netcore_n60-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_netcore_n60_defconfig` | netcore_n60 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),117248k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_redmi_ax6000-512m_defconfig` | redmi_ax6000-512m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112640k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_redmi_ax6000_defconfig` | redmi_ax6000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),112640k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_ruijie_ew-6000gx-pro_defconfig` | ruijie_ew-6000gx-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_ruijie_rg-x60-new_defconfig` | ruijie_rg-x60-new | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_ruijie_rg-x60-pro_defconfig` | ruijie_rg-x60-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),64512k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_ruijie_rg-x60_defconfig` | ruijie_rg-x60 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_tplink_tl-xdr608x_defconfig` | tplink_tl-xdr608x | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),384k(config),640k(factory),1024k(reserved),512k(u-boot-env),1536k(fip),117760k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_tplink_tl-xtr8488_defconfig` | tplink_tl-xtr8488 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(config),256k(factory),2048k(reserved),2048k(fip),122880k(ubi) | mt7986a-spim-nand-rfb |
| `configs-nonmbm/mt7986_zyxel_ex5700_defconfig` | zyxel_ex5700 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),485888k(ubi) | mt7986a-spim-nand-rfb |

### multi_layout

| Source | Model | Layout | MTDIDS | MTDPARTS | Boot Part | Factory Part | Sysupgrade Kernel | Sysupgrade Rootfs |
|---|---|---|---|---|---|---|---|---|
| `nonmbm/mt7986a-redmi-ax6000-512m.dts` | redmi-ax6000-512m | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),30720k(ubi_kernel),81920k(ubi) | - | - | - | - |
|  |  | immortalwrt-110m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),110m(ubi) | - | - | - | - |
|  |  | immortalwrt-490m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),490m(ubi) | - | - | - | - |
| `nonmbm/mt7986a-redmi-ax6000.dts` | redmi-ax6000 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),30720k(ubi_kernel),81920k(ubi) | - | - | - | - |
|  |  | immortalwrt-110m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),110m(ubi) | - | - | - | - |
| `nonmbm/mt7986a-ruijie-rg-x60.dtsi` | ruijie-rg-x60 | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | - | - | - | - |
|  |  | expand | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),115712k(ubi) | - | - | - | - |
|  |  | stock | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),64512k(ubi) | - | - | - | - |
| `nonmbm/mt7986a-ruijie-x60-pro.dts` | ruijie-x60-pro | default | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),64512k(ubi) | - | - | - | - |
|  |  | ubi-107m | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),109568k(ubi) | - | - | - | - |

### ubootmod

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs-fit/mt7986_netcore_n60-pro_defconfig` | netcore_n60-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_netcore_n60_defconfig` | netcore_n60 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(factory),2048k(fip),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_redmi_ax6000_defconfig` | redmi_ax6000 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(Nvram),256k(Bdata),2048k(factory),2048k(fip),256k(crash),256k(crash_log),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_ruijie_ew-6000gx-pro_defconfig` | ruijie_ew-6000gx-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_ruijie_rg-x60-new_defconfig` | ruijie_rg-x60-new | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_ruijie_rg-x60-pro_defconfig` | ruijie_rg-x60-pro | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_ruijie_rg-x60_defconfig` | ruijie_rg-x60 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),512k(product_info),512k(kdump),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_tplink_tl-xdr608x_defconfig` | tplink_tl-xdr608x | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),384k(config),640k(factory),1024k(reserved),512k(u-boot-env),1536k(fip),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_tplink_tl-xtr8488_defconfig` | tplink_tl-xtr8488 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),256k(config),256k(factory),2048k(reserved),2048k(fip),-(ubi) | mt7986a-spim-nand-rfb |
| `configs-fit/mt7986_zyxel_ex5700_defconfig` | zyxel_ex5700 | spi-nand0=spi-nand0 | spi-nand0:1024k(bl2),512k(u-boot-env),2048k(Factory),2048k(fip),-(ubi) | mt7986a-spim-nand-rfb |

## MT7987 Platform

### default

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs/mt7987_nor_emmc_rfb_defconfig` | nor_emmc_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),2048k(factory),2048k(fip) | mt7987a-nor-emmc-rfb |
| `configs/mt7987_spim_nand_nmbm_rfb_defconfig` | spim_nand_nmbm_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7987a-spim-nand-rfb |
| `configs/mt7987_spim_nand_rfb_defconfig` | spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7987a-spim-nand-rfb |
| `configs/mt7987_spim_nand_ubi_rfb_defconfig` | spim_nand_ubi_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7987a-spim-nand-rfb |
| `configs/mt7987_spim_nor_rfb_defconfig` | spim_nor_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),2048k(factory),512k(fip),-(firmware) | mt7987a-spim-nor-rfb |

### nonmbm

No data.

### multi_layout

No data.

### ubootmod

No data.

## MT7988 Platform

### default

| Source | Model | MTDIDS | MTDPARTS_DEFAULT | FDT |
|---|---|---|---|---|
| `configs/mt7988_10g_p0_spim_nand_rfb_defconfig` | 10g_p0_spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-10g-p0-spim-nand-rfb |
| `configs/mt7988_10g_p1_spim_nand_rfb_defconfig` | 10g_p1_spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-10g-p1-spim-nand-rfb |
| `configs/mt7988_i2p5g_p1_spim_nand_rfb_defconfig` | i2p5g_p1_spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),-(ubi) | mt7988-i2p5g-p1-spim-nand-rfb |
| `configs/mt7988_nor_emmc_rfb_defconfig` | nor_emmc_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),2048k(factory),2048k(fip) | mt7988-spim-nor-rfb |
| `configs/mt7988_snfi_nand_nmbm_rfb_defconfig` | snfi_nand_nmbm_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-snfi-nand-rfb |
| `configs/mt7988_snfi_nand_rfb_defconfig` | snfi_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-snfi-nand-rfb |
| `configs/mt7988_spim_nand_an8831x_rfb_defconfig` | spim_nand_an8831x_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7988-spim-nand-an8831x-rfb |
| `configs/mt7988_spim_nand_nmbm_an8831x_rfb_defconfig` | spim_nand_nmbm_an8831x_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7988-spim-nand-an8831x-rfb |
| `configs/mt7988_spim_nand_nmbm_rfb_defconfig` | spim_nand_nmbm_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-spim-nand-rfb |
| `configs/mt7988_spim_nand_rfb_defconfig` | spim_nand_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-spim-nand-rfb |
| `configs/mt7988_spim_nand_sb_rfb_defconfig` | spim_nand_sb_rfb | nmbm0=nmbm0 | nmbm0:1024k(bl2),512k(u-boot-env),4096k(factory),2048k(fip),115200k(ubi) | mt7988-spim-nand-rfb |
| `configs/mt7988_spim_nand_ubi_rfb_defconfig` | spim_nand_ubi_rfb | spi-nand0=spi-nand0 | spi-nand0:2048k(bl2),-(ubi) | mt7988-spim-nand-rfb |
| `configs/mt7988_spim_nor_rfb_defconfig` | spim_nor_rfb | nor0=nor0 | nor0:256k(bl2),64k(u-boot-env),2048k(factory),512k(fip),-(firmware) | mt7988-spim-nor-rfb |

### nonmbm

No data.

### multi_layout

No data.

### ubootmod

No data.

