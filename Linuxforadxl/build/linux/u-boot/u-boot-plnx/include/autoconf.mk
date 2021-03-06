CONFIG_SPI_FLASH_WINBOND=y
CONFIG_CMD_FAT=y
CONFIG_BOOTM_NETBSD=y
CONFIG_ARMV7=y
CONFIG_CMD_ITEST=y
CONFIG_BOOTM_VXWORKS=y
CONFIG_CMD_EDITENV=y
CONFIG_SYS_ENET=y
CONFIG_ZYNQ=y
CONFIG_CMD_CRC32=y
CONFIG_SYS_LONGHELP=y
CONFIG_SYS_LOAD_ADDR=$(CONFIG_SYS_SDRAM_BASE)
CONFIG_CMD_XIMG=y
CONFIG_CMD_CACHE=y
CONFIG_BOOTDELAY=4
CONFIG_SPI_FLASH=y
CONFIG_SYS_HELP_CMD_WIDTH=8
CONFIG_NR_DRAM_BANKS=y
CONFIG_CMD_SAVES=y
CONFIG_FS_FAT=y
CONFIG_BOOTM_RTEMS=y
CONFIG_SYS_CBSIZE=2048
CONFIG_ETHADDR="00:0a:35:00:82:65"
CONFIG_SDHCI=y
CONFIG_MD5=y
CONFIG_BOOTM_LINUX=y
CONFIG_CMD_CONSOLE=y
CONFIG_SYS_CPU="armv7"
CONFIG_SYS_LDSCRIPT="arch/arm/cpu/armv7/zynq/u-boot.lds"
CONFIG_MII=y
CONFIG_SYS_CACHELINE_SIZE=32
CONFIG_MMC=y
CONFIG_CMD_MISC=y
CONFIG_FIT=y
CONFIG_PHY_GIGE=y
CONFIG_ENV_OFFSET=0x500000
CONFIG_CLOCKS=y
CONFIG_ENV_OVERWRITE=y
CONFIG_CMD_NET=y
CONFIG_ZYNQ_GEM0=y
CONFIG_CMD_NFS=y
CONFIG_ZYNQ_SERIAL_UART1=y
CONFIG_ENV_SIZE=0x20000
CONFIG_CMD_CLK=y
CONFIG_CMD_PING=y
CONFIG_SYS_MALLOC_LEN="SIZE"
CONFIG_SPI_FLASH_SPANSION=y
CONFIG_SYS_BOOTM_LEN=0x1000000
CONFIG_SYS_TEXT_BASE=0x1ff00000
CONFIG_CMD_SAVEENV=y
CONFIG_ENV_SECT_SIZE=0x20000
CONFIG_BOOTM_PLAN9=y
CONFIG_SPI_FLASH_BAR=y
CONFIG_FPGA_ZYNQPL=y
CONFIG_CMD_MEMORY=y
CONFIG_SYS_MAXARGS=32
CONFIG_CMD_RUN=y
CONFIG_IPADDR=y
CONFIG_SYS_PBSIZE="(CONFIG_SYS_CBSIZE + sizeof(CONFIG_SYS_PROMPT) + 16)"
CONFIG_BOOTP_HOSTNAME=y
CONFIG_BOARDDIR="board/xilinx/zynq"
CONFIG_SPI_FLASH_STMICRO=y
CONFIG_OF_LIBFDT=y
CONFIG_SUPPORT_VFAT=y
CONFIG_PHY_MARVELL=y
CONFIG_PHYLIB=y
CONFIG_CMDLINE_EDITING=y
CONFIG_FPGA=y
CONFIG_SYS_CONSOLE_IS_IN_ENV=y
CONFIG_CMD_EXT2=y
CONFIG_BOOTCOMMAND="run default_bootcmd"
CONFIG_CPU_FREQ_HZ=666666687
CONFIG_CMD_SETGETDCR=y
CONFIG_SYS_L2CACHE_OFF=y
CONFIG_ZLIB=y
CONFIG_CMD_GO=y
CONFIG_BOOTP_BOOTFILESIZE=y
CONFIG_CMD_BOOTD=y
CONFIG_CMD_BOOTM=y
CONFIG_NET_MULTI=y
CONFIG_BOOTP_MAY_FAIL=y
CONFIG_SYS_SOC="zynq"
CONFIG_ZYNQ_GEM_PHY_ADDR0=7
CONFIG_SYS_HZ=1000
CONFIG_DOS_PARTITION=y
CONFIG_GZIP=y
CONFIG_SYS_VENDOR="xilinx"
CONFIG_CMD_SF=y
CONFIG_CMD_FPGA=y
CONFIG_SYS_INIT_RAM_SIZE=0x1000
CONFIG_SYS_BAUDRATE_TABLE="{9600, 19200, 38400, 57600, 115200, 230400}"
CONFIG_SF_DUAL_FLASH=y
CONFIG_SYS_HUSH_PARSER=y
CONFIG_SYS_SDRAM_BASE=0x0
CONFIG_SYS_BOOT_RAMDISK_HIGH=y
CONFIG_CMD_SPI=y
CONFIG_CMD_DHCP=y
CONFIG_ZYNQ_QSPI=y
CONFIG_SYS_PROMPT_HUSH_PS2="> "
CONFIG_CMD_ECHO=y
CONFIG_GENERIC_MMC=y
CONFIG_HOSTNAME="XILINX_BOARD_NAME"
CONFIG_FAT_WRITE=y
CONFIG_BOOTP_SERVERIP=y
CONFIG_SYS_INIT_RAM_ADDR=0xFFFF0000
CONFIG_BOOTP_GATEWAY=y
CONFIG_ZYNQ_GEM=y
CONFIG_ZYNQ_SDHCI0=0xE0100000
CONFIG_EXTRA_ENV_SETTINGS="SERIAL_MULTI CONSOLE_ARG PSSERIAL0 "nc=setenv stdout nc;setenv stdin nc;\0autoload=no\0clobstart=0x01000000\0netstart=0x01000000\0dtbnetstart=0x02800000\0loadaddr=0x01000000\0bootsize=0x500000\0bootstart=0x0\0boot_img=BOOT.BIN\0load_boot=tftp ${clobstart} ${boot_img}\0update_boot=setenv img boot; setenv psize ${bootsize}; setenv installcmd \"install_boot\"; run load_boot test_img; setenv img; setenv psize; setenv installcmd\0sd_update_boot=echo Updating boot from SD; mmcinfo && fatload mmc 0:1 ${clobstart} ${boot_img} && run install_boot\0install_boot=sf probe 0 && sf erase ${bootstart} ${bootsize} && sf write ${clobstart} ${bootstart} ${filesize}\0bootenvsize=0x20000\0bootenvstart=0x500000\0eraseenv=sf probe 0 && sf erase ${bootenvstart} ${bootenvsize}\0kernelsize=0xa80000\0kernelstart=0x520000\0kernel_img=image.ub\0load_kernel=tftp ${clobstart} ${kernel_img}\0update_kernel=setenv img kernel; setenv psize ${kernelsize}; setenv installcmd \"install_kernel\"; run load_kernel test_crc; setenv img; setenv psize; setenv installcmd\0sd_update_kernel=echo Updating kernel from SD; mmcinfo && fatload mmc 0:1 ${clobstart} ${kernel_img} && run install_kernel\0install_kernel=sf probe 0 && sf erase ${kernelstart} ${kernelsize} && sf write ${clobstart} ${kernelstart} ${filesize}\0cp_kernel2ram=sf probe 0 && sf read ${netstart} ${kernelstart} ${kernelsize}\0sdboot=echo boot Petalinux; mmcinfo && fatload mmc 0 ${netstart} ${kernel_img} && bootm \0fault=echo ${img} image size is greater than allocated place - partition ${img} is NOT UPDATED\0test_crc=if imi ${clobstart}; then run test_img; else echo ${img} Bad CRC - ${img} is NOT UPDATED; fi\0test_img=setenv var \"if test ${filesize} -gt ${psize}\\; then run fault\\; else run ${installcmd}\\; fi\"; run var; setenv var\0netboot=tftp ${netstart} ${kernel_img} && bootm\0default_bootcmd=run cp_kernel2ram && bootm ${netstart}\0""
CONFIG_SYS_INIT_SP_ADDR="(CONFIG_SYS_INIT_RAM_ADDR + CONFIG_SYS_INIT_RAM_SIZE - GENERATED_GBL_DATA_SIZE)"
CONFIG_SYS_ARCH="arm"
CONFIG_CMD_ASKENV=y
CONFIG_BAUDRATE=115200
CONFIG_SYS_BOARD="zynq"
CONFIG_SYS_BOOTMAPSZ=0x08000000
CONFIG_ENV_IS_IN_SPI_FLASH=y
CONFIG_CMD_IMPORTENV=y
CONFIG_CMD_EXPORTENV=y
CONFIG_PARTITIONS=y
CONFIG_SERIAL_MULTI=y
CONFIG_SYS_MEMTEST_END="(CONFIG_SYS_SDRAM_BASE + 0x1000)"
CONFIG_FIT_VERBOSE=y
CONFIG_ZYNQ_SERIAL=y
CONFIG_SYS_NO_FLASH=y
CONFIG_SYS_DEF_EEPROM_ADDR=0
CONFIG_FS_EXT4=y
CONFIG_CMD_SOURCE=y
CONFIG_SYS_PROMPT="U-Boot-PetaLinux> "
CONFIG_BOOTP_BOOTPATH=y
CONFIG_SYS_USR_EXCEP=y
CONFIG_SHA1=y
CONFIG_CRC32=y
CONFIG_SYS_FAULT_ECHO_LINK_DOWN=y
CONFIG_SYS_MEMTEST_START=$(CONFIG_SYS_SDRAM_BASE)
CONFIG_CMD_LOADB=y
CONFIG_CMD_LOADS=y
CONFIG_CMD_IMI=y
CONFIG_SF_DEFAULT_SPEED="(XILINX_PS7_QSPI_CLK_FREQ_HZ / 4)"
CONFIG_LMB=y
CONFIG_ARM=y
CONFIG_NETCONSOLE=y
CONFIG_SYS_SDRAM_SIZE=0x20000000
CONFIG_CMD_BDI=y
CONFIG_SERVERIP="172.16.163.206"
CONFIG_BOOTSTAGE_USER_COUNT=20
CONFIG_ZYNQ_SDHCI=y
CONFIG_PREBOOT="echo U-BOOT for ${hostname};setenv preboot; echo; dhcp"
CONFIG_CMD_MMC=y
