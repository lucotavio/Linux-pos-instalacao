#!/bin/bash

## Instalando Pinta
echo "deb http://ppa.launchpad.net/pinta-maintainers/pinta-stable/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/pinta-maintainers/pinta-stable/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.lis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 45EAD2AF3C2BB95F11E609A1BC3E0682A5A1D6B2
sudo apt-get update -y
sudo apt-get install -y pinta
