#!/bin/sh 
make distclean
source /opt/petalinux/2017.4/environment-setup-aarch64-xilinx-linux
source /opt/petalinux/2017.4/environment-setup-cortexa9hf-neon-xilinx-linux-gnueabi

export CCOMPILER=aarch64-xilinx-linux-musl-
export ARM=arm64
export CROSS_COMPILE=aarch64-xilinx-linux-musl-
make ARCH=arm xilinx_zynqmp_defconfig
make ARCH=arm64 menuconfig
make ARCH=arm64


