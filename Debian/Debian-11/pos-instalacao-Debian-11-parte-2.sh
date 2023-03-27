#!/bin/bash


## Entrando na para pasta de programas
cd /home/$USER/Downloads/Programas/


echo -e "\n\n\n***************************************************** INSTALANDO  O  MYSQL *************************************************************"

chmod +x mysql-apt-config_0.8.24-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt install -y mysql-server

echo -e "\n\n\n****************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PORTUGOL  STUDIO ******************************************************"

chmod +x portugol-studio-2.7.5-linux-x64.run
sudo ./portugol-studio-2.7.5-linux-x64.run

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

## Instalando Headers ára VMware funcionar
sudo apt install -y linux-headers-5.10.0-21-amd64

chmod +x VMware-Player-Full-17.0.0-20800274.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install -y build-essential
sudo apt install -y manpages-dev

## Instalando VMware
sudo ./VMware-Player-Full-17.0.0-20800274.x86_64.bundle

## Alterando icone  do VMware
sudo mkdir /opt/vmware-icon/
sudo cp vmware.png /opt/vmware-icon/
sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmplayer

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences; then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.kde.umbrello -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Voltando para pasta de programas
cd /home/$USER/Downloads/Programas/


sudo apt update -y


## Tornando todos os arquivos .jar
## em arquivos executaveis
chmod +x lombok.jar


## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Android Studio
sudo dpkg -i android-studio-2022.1.1.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher-1.14.3.deb
lucotaviosudo apt --fix-broken install -y


## BleachBit
sudo dpkg -i bleachbit_4.4.2-0_all_ubuntu2004.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_22.3.0_amd64.deb
sudo apt --fix-broken install -y


## DbVisualizer
sudo dpkg -i dbvis_linux_14_0_1.deb
sudo apt --fix-broken install -y


## Dropbox
sudo dpkg -i dropbox_2020.03.04_amd64.deb
sudo apt --fix-broken install -y

## Eclipse
sudo dpkg -i eclipse-jee-2022-09.deb
sudo apt --fix-broken install -y


## Figma
sudo dpkg -i figma-linux_0.10.0_linux_amd64.deb
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-2022.6.0.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.8.4.50481-bullseye_amd64.deb
sudo apt --fix-broken install -y


## Intellij Community
sudo dpkg -i intellij-community.deb
sudo apt --fix-broken install -y


## Japersoft studio
sudo dpkg -i jaspersoft-sudio-6.20.0_linux_amd64.deb
sudo apt --fix-broken install -y


## Kdenlive
sudo dpkg -i kdenlive-22.12.1.deb
sudo apt --fix-broken install -y


## Microsoft Teams
sudo dpkg -i teams_1.5.00.23861_amd64.deb
sudo apt --fix-broken install -y


## Netbeans
sudo dpkg -i netbeans_16-1_all.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y


## Postman
sudo dpkg -i postman.deb
sudo apt --fix-broken install -y


## Scene Builder
sudo dpkg -i SceneBuilder-19.0.0.deb
sudo apt --fix-broken install -y


## Spring tool Suite
sudo dpkg -i --force-overwrite sts-4.16.0.RELEASE.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_5.0.2_amd64.deb
sudo apt --fix-broken install -y


## VirtualBox
sudo dpkg -i virtualbox-6.1_Debian_bullseye_amd64.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i code_1.74.2-1671533413_amd64.deb
sudo apt --fix-broken install -y


## WPS Office
sudo dpkg -i wps-office_11.1.0.11664.XA_amd64.deb
sudo apt --fix-broken install -y


## Eclipse
echo -e "\n\n\n *********************************************INSTALANDO  LOMBOK  ECLIPSE ************************************************************"

sudo java -jar lombok.jar

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n *************************************  INSTALANDO  LOMBOK  SPRING TOOLS  SUITE ******************************************************"

sudo java -jar lombok.jar

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n****************************DELETANDO  ARQUIVOS  DA  PASTA  MODELO  CRIADOS  AUTOMATICAMENTE *****************************************"

sudo rm /home/$USER/Modelos/DOC\ Document.docx
sudo rm /home/$USER/Modelos/DOCX\ Document.docx
sudo rm /home/$USER/Modelos/PPT\ Presentation.ppt
sudo rm /home/$USER/Modelos/PPTX\ Presentation.pptx
sudo rm /home/$USER/Modelos/XLS\ Worksheet.xls
sudo rm /home/$USER/Modelos/XLSX\ Worksheet.xlsx

echo -e "\n\n\n**************************************************************************************************************************************"


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove

echo "******************************************REINICIAR  O  COMPUTADOR*****************************************************************************"
