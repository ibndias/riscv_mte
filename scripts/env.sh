#!/bin/bash

SRC_DIR="${ROOT_DIR}/src"
BUILD_DIR="${ROOT_DIR}/build"
INSTALL_DIR="${ROOT_DIR}/install"
RISCV_ISA_TARGET=rv64g

QEMU_SRC_DIR="${SRC_DIR}/qemu"
GCC_SRC_DIR="${SRC_DIR}/riscv-gnu-toolchain"
TESTS_SRC_DIR="${SRC_DIR}/tests"

QEMU_BUILD_DIR="${BUILD_DIR}/qemu"
GCC_BUILD_DIR="${BUILD_DIR}/riscv-gnu-toolchain"
TESTS_BUILD_DIR="${BUILD_DIR}/tests"

CPU_NUM=32
