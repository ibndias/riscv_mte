#!/bin/bash
./build_test_only.sh
rm -rf ./build/run_tests
mkdir build/run_tests
cd build/run_tests
cmake ../..
ctest 