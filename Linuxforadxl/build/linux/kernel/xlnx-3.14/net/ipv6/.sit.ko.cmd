cmd_net/ipv6/sit.ko := arm-xilinx-linux-gnueabi-ld -EL -r  -T /opt/PetaLinux/petalinux-v2014.2-final/components/linux-kernel/xlnx-3.14/scripts/module-common.lds --build-id  -o net/ipv6/sit.ko net/ipv6/sit.o net/ipv6/sit.mod.o