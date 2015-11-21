#!/bin/sh -e

export PATH=$(pwd)/utils:$PATH

: ${A:=$(uname -m)}

export CC="x86_64-unknown-linux-gnu-gcc"
export CFLAGS="-Os"
export LDFLAGS="-s"

build build-scripts/glibc-*
build build-scripts/binutils-*
build build-scripts/gcc-*
build build-scripts/make-*
build build-scripts/linux-*
build build-scripts/busybox-*
build build-scripts/finish
