#!/bin/bash

source scripts/env.sh

function build_gcc ()
{
    mkdir -p "${GCC_BUILD_DIR}"

    cd "${GCC_BUILD_DIR}"
    ${GCC_SRC_DIR}/configure --prefix="${INSTALL_DIR}" --with-arch=${RISCV_ISA_TARGET}# --enable-multilib
    set -e
    make linux -j${CPU_NUM}
    
    ${GCC_SRC_DIR}/configure --prefix="${INSTALL_DIR}" --with-arch=${RISCV_ISA_TARGET}# --enable-multilib
    set -e
    make newlib -j${CPU_NUM}
}

