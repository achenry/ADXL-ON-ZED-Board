cmd_drivers/clocksource/built-in.o :=  arm-xilinx-linux-gnueabi-ld -EL    -r -o drivers/clocksource/built-in.o drivers/clocksource/clksrc-of.o drivers/clocksource/mmio.o drivers/clocksource/cadence_ttc_timer.o drivers/clocksource/arm_global_timer.o drivers/clocksource/dummy_timer.o 
