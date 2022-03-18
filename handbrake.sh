#!/bin/bash

## Instalando Handbrake
echo "deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 43D3A9F60C58A7169778E6FB8771ADB0816950D8
sudo apt-get update -y
sudo apt-get install -y handbrake-gtk
sudo apt-get install -y handbrake-cli
