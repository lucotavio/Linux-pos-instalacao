#!/bin/bash

## Instalando Gimp
echo "deb http://ppa.launchpad.net/otto-kesselgulasch/gimp/ubuntu bionic main " | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/otto-kesselgulasch/gimp/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FB97E9C3A97F85C095AEA7903BDAAC08614C4B38
sudo apt-get update -y
sudo apt-get install gimp
