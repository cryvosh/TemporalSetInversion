#!/bin/bash
clang -S -emit-llvm $1.cpp -O3 -fno-slp-vectorize -mllvm --inline-threshold=1000000 -I include -std=c++20 -cl-single-precision-constant -fno-vectorize