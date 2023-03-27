#!/bin/bash

Instalando ADB
sudo apt-get update -y
sudo apt-get install -y adb
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm
