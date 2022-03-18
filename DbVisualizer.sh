#!/bin/bash

## Download DBVisualizer
echo -e "\n\n\n DBVisualizer - 147 MB"
if [ -e dbvis_linux_12_0_3.deb ];then
    echo "O arquivo  dbvis_linux_12_0_3.deb  ja existe"
else
    curl -L -o dbvis_linux_12_0_3.deb https://www.dropbox.com/s/lhj41d14new5s8i/dbvis_linux_12_0_3.deb?dl=0
fi

sudo dpkg -i dbvis_linux_12_0_3.deb
sudo apt --fix-broken install -y
