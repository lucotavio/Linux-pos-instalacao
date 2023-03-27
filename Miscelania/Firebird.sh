#!/bin/bash

## INSTALANDO FIREBIRD
echo "deb http://ppa.launchpad.net/mapopa/firebird3.0/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/mapopa/firebird3.0/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EA316A2F8D6BD55554C23F680BE6D09EEF648708
sudo apt-get update -y
sudo apt-get install -y firebird3.0-server
