#!/bin/bash

##Instalando FortiClient
wget -O - https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo apt-key add -
echo "deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu/ /bionic multiverse" | sudo tee -a /etc/apt/sources.list
sudo apt-get update -y
sudo apt install forticlient
