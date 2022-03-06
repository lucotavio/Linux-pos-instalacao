#!/bin/bash

sudo apt-get update -y

sudo apt install sassc

git clone https://github.com/ewlsh/dash-to-dock/
cd dash-to-dock
git checkout ewlsh/gnome-40
make
make install
