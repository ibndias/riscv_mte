#!/bin/bash
set -x
echo "Testing one bin"
./scripts/run_qemu.sh ./build/tests/simple_fail . ; echo $?
