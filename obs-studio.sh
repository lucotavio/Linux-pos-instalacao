#!/bin/bash

## Instalando Obs Studio
sudo apt install ffmpeg
echo "deb http://ppa.launchpad.net/obsproject/obs-studio/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/obsproject/obs-studio/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BC7345F522079769F5BBE987EFC71127F425E228
sudo apt-get update -y
sudo apt install -y obs-studio
