#!/bin/bash

ROOT_DIR="${2}"

set -e 
source ${2}/scripts/env.sh

QEMU_BIN=${INSTALL_DIR}/bin/qemu-system-riscv64

${QEMU_BIN} \
    -nographic \
    -bios none -s -S\
    -machine virt -singlestep \
    -kernel ${1} \
    -m 1024M #-d nochain,in_asm -D a.txt
exit $?
