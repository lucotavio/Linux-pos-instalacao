#!/bin/bash

## Download VirtualBox
echo -e "\n\n\n VirtualBox"
if [ -e virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb ];then
    echo "O arquivo  virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb  ja existe"
else
    curl -L -o virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb https://www.dropbox.com/s/nhvlcmkcsdhgr3k/virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb?dl=0
fi

chmod +x virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb
sudo dpkg -i virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb
sudo apt --fix-broken install -y
