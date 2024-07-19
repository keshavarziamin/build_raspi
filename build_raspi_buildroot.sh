#!/bin/bash

#download 
buildroot_version=2024.05

if [ ! -d "buildroot" ]; then
    git clone https://github.com/buildroot/buildroot.git
fi

cd buildroot
git checkout ${buildroot_version}


make raspberrypi4_defconfig
make menuconfig
make
