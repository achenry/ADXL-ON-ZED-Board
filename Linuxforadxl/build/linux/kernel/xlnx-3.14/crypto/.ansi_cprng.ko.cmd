cmd_crypto/ansi_cprng.ko := arm-xilinx-linux-gnueabi-ld -EL -r  -T /opt/PetaLinux/petalinux-v2014.2-final/components/linux-kernel/xlnx-3.14/scripts/module-common.lds --build-id  -o crypto/ansi_cprng.ko crypto/ansi_cprng.o crypto/ansi_cprng.mod.o
