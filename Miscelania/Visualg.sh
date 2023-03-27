#!/bin/bash

echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  SNAP *********************************************************"

## Instalando Visualg
sudo snap install wine-platform-runtime
sudo snap install wine-platform-3-stable
sudo sudo snap install visualg
sudo snap connect visualg:wine-runtime wine-platform-runtime
sudo snap connect visualg:wine-3-stable wine-platform-3-stable
sudo snap refresh visualg

echo -e "\n\n\n**************************************************************************************************************************************"
