#!/bin/bash


## Atualizando os pacotes
sudo dnf upgrade -y

## Atualizando programas instados atraves do Flatpak
flatpak update -y


echo "******************************************REINICIAR  O  COMPUTADOR*****************************************************************************"
