#!/bin/bash
#set -x
echo "Running QEMU..."
./scripts/run_qemu.sh ${1} . ; echo $?
