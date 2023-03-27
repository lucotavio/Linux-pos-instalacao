#!/bin/bash

## Atualizando programas
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt clean -y
sudo apt autoclean -y
sudo apt autoremove

## Atualizando programas instados atraves do Snap
sudo snap refresh

## Atualizando programas instados atraves do Flatpak
flatpak update -y


echo "******************************************REINICIAR  O  COMPUTADOR*****************************************************************************"
