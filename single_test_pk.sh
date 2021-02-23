#!/bin/bash
#set -x
echo "Running QEMU..."

ROOT_DIR="."

set -e 
source ./scripts/env.sh

QEMU_BIN=${INSTALL_DIR}/bin/qemu-system-riscv64
set -x
${QEMU_BIN} \
    -nographic \
    -bios none -s -S\
    -machine virt \
    -kernel ${1} \
    -append ${2} \
    -m 1024M &
    
#./scripts/run_qemu_dbg.sh ${1} . 
#riscv64-unknown-elf-gdb -ex 'target remote :1234' -ex 'b rest_of_boot_loader' -ex 'layout regs' -ex 'c' ${1}
gnome-terminal -e "./run_gdb.sh ${1}"
#echo $?
