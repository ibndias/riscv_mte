#!/bin/bash
#set -x
echo "Running QEMU..."
./scripts/run_qemu_dbg.sh ${1} . &
riscv64-unknown-elf-gdb -ex 'target remote :1234' -ex 'b main' -ex 'layout regs' -ex 'c' ${1}
echo $?
