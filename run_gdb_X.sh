./install/bin/riscv64-unknown-elf-gdb \
-ex 'c' ${1} \
--command=gdbscript
#-ex 'target remote :1234' \
#-ex 'b main' \
#-ex 'layout regs' \
#-ex 'set logging on' \
#-ex 'set height 0' \
#-ex 'set style enabled off' \
#-ex 'set logging overwrite on' \
#-ex 'c' ${1}

#-ex 'while 1 x/i $pc stepi end' \
