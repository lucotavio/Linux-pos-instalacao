#!/bin/bash


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - Intellij Community"
    echo "2 - Intellij Ultimate"

    read opcao

    if [ $opcao -eq 1 ];then
        echo -e "\n\n********************INSTALANDO O  INTELLIJ COMMUNITY ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  INTELLIJ ULTIMATE ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *************************************************************"

## Instalando aplicativos usando Flatpak
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub io.atom.Atom -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.apache.netbeans -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub org.kde.umbrello -y

echo "*******************************************************************************************************************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO  E  INSTALANDO  LIVEPATCH******************************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK"

    read opcao

    sudo apt-get update -y
    sudo ubuntu-drivers devices
    sudo apt install -y ubuntu-advantage-tools

    if [ $opcao -eq 1 ];then
        echo -e "\n\n******************** DESKTOP ********************************************"

        sudo apt install -y nvidia-driver-390
        sudo ua attach C1NN7PA4J2HtxnsvSiTUPEs5bUU7Y

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** NOTEBOOK ********************************************"

        sudo apt install -y nvidia-driver-515
        sudo ua attach C1x3zxz1GFawrD8EY4oT7RsxsEfH1

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "*******************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB *************************************"

sudo apt-get update -y

## Instalando o comando gawk
sudo apt-get install -y gawk

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


cd /home/$USER/Downloads/Programas/


## 4K Video Downloader
sudo apt install -y ./4kvideodownloader_4.21.7-1_amd64.deb

## Balena Etcher
sudo apt install -y ./balena-etcher-electron_1.7.9_amd64.deb
gawk -i inplace '!/Exec/' /usr/share/applications/balena-etcher-electron.desktop
echo "Exec=/opt/balenaEtcher/balena-etcher-electron --no-sandbox" | sudo tee -a /usr/share/applications/balena-etcher-electron.desktop

## BleachBit
sudo apt install -y ./bleachbit_4.4.2-0_all_ubuntu2004.deb

## Chrome
sudo apt install -y ./google-chrome-stable_current_amd64.deb

## Dbeaver
sudo apt install -y ./dbeaver-lite-22.2.0-amd64.deb

## DbVisualizer
sudo apt install -y ./dbvis_linux_14_0_1.deb

## Dropbox
sudo apt install -y ./dropbox_2020.03.04_amd64.deb

## Figma
sudo apt install -y ./figma-linux_0.10.0_linux_amd64.deb

## GitKraken
sudo apt install -y ./gitkraken-amd64.deb

## Insomnia
sudo apt install -y ./Insomnia.Core-2022.6.0.deb

## Insync
sudo apt install -y ./insync_3.7.14.50440-jammy_amd64.deb

## Only Office
sudo apt install -y ./onlyoffice-desktopeditors_amd64.deb

## Skype
sudo apt install -y ./skypeforlinux-64.deb

## Star UML
sudo apt install -y ./StarUML_5.0.2_amd64.deb

## Microsoft Teams
sudo apt install -y ./teams_1.5.00.23861_amd64.deb

## VirtualBox
sudo apt install -y ./virtualbox-7.0_7.0.4-154605_Ubuntu_jammy_amd64.deb

## Visual Stuio Code
sudo apt install -y ./code_1.72.2-1665614327_amd64.deb

echo "*******************************************************************************************************************************************************"


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove
