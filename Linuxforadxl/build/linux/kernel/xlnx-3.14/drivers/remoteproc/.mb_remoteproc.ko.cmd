cmd_drivers/remoteproc/mb_remoteproc.ko := arm-xilinx-linux-gnueabi-ld -EL -r  -T /opt/PetaLinux/petalinux-v2014.2-final/components/linux-kernel/xlnx-3.14/scripts/module-common.lds --build-id  -o drivers/remoteproc/mb_remoteproc.ko drivers/remoteproc/mb_remoteproc.o drivers/remoteproc/mb_remoteproc.mod.o