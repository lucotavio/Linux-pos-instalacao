#!/bin/bash

## Instalando Stacer
echo "deb http://ppa.launchpad.net/oguzhaninan/stacer/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/oguzhaninan/stacer/ubuntu bionic main " | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE2D607711EDD0FF4D069EC70F6444BB6902FCAF
sudo apt-get update -y
sudo apt-get install -y handbrake-gtk
sudo apt-get install -y stacer
