#!/bin/bash
set -e

# Build clang
mkdir -p /root/llvm-build
cd /root/llvm-build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE="Release" -DLLVM_ENABLE_ASSERTIONS=ON -DCMAKE_INSTALL_PREFIX=/root/llvm-c2 -DLLVM_ENABLE_PEDANTIC=OFF ../llvm
make -j8
make install

# Build C2C
mkdir -p /root/c2-build
cd /root/c2-build
cmake . /root/c2compiler/c2c
make -j8
