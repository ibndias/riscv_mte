./install/bin/riscv64-unknown-linux-gnu-gdb \
-ex 'target remote :1234' \
-ex 'b main' \
-ex 'layout regs' \
-ex 'c' ${1}