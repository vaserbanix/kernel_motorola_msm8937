#!/bin/bash
#export ARCH=arm
#export CROSS_COMPILE=/home/vasy/Toolchain/linaro-5.5/bin/arm-eabi-

make montana_defconfig
make 

tools/dtbTool -s 4096 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/dts/qcom/ -v
