#!/bin/bash


## Entrando na para pasta de Software
cd /home/$USER/Downloads/Software/



echo -e "\n\n******************************************** INSTALANDO  IMPRESSORA  CANON *************************************************************"

## https://th.canon/en/support/PIXMA%20G3010/model
## Download Driver Impressora
echo -e "\n\n\n Driver Impressora"
if [ -d /impressora-Canon-G-3110-deb ];then
  cd impressora-Canon-G-3110-deb/
  chmod +x install.sh
  sudo ./install.sh
else
    curl -L -o impressora-Canon-G-3110-deb.tar.gz https://www.dropbox.com/s/8dhvnk0lqjifn2d/impressora-Canon-G-3110-deb.tar.gz?dl=0
    descompactar-tar-gz impressora-Canon-G-3110-deb.tar.gz
    cd impressora-Canon-G-3110-deb/
    chmod +x install.sh
    sudo ./install.sh
    rm impressora-Canon-G-3110-deb.tar.gz
fi

## Entrando na para pasta de Software
cd /home/$USER/Downloads/Software/

echo -e "\n\n****************************************************************************************************************************************"





echo -e "\n\n***************************************************** INSTALANDO  O  MYSQL *************************************************************"

chmod +x mysql-apt-config_0.8.24-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt install -y mysql-server
sudo apt install -y mysql-workbench-community

echo -e "\n\n****************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PORTUGOL  STUDIO ******************************************************"

chmod +x portugol-studio-2.7.5-linux-x64.run
sudo ./portugol-studio-2.7.5-linux-x64.run

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

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




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO  E  INSTALANDO  LIVEPATCH*********************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2 ou 3"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK PESSOAL"
    echo "3 - NOTEBOOK EMPRESA"

    read opcao

    sudo apt update -y
    sudo ubuntu-drivers devices
    sudo apt install -y ubuntu-advantage-tools

    if [ $opcao -eq 1 ];then
        echo -e "\n\n*************************************DESKTOP *****************************************************"

        sudo apt install -y nvidia-driver-390
        sudo ua attach C1NN7PA4J2HtxnsvSiTUPEs5bUU7Y

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n*********************************** NOTEBOOK LUCIANO *********************************************"

        sudo apt install -y nvidia-driver-525
        sudo ua attach C1x3zxz1GFawrD8EY4oT7RsxsEfH1

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 3 ];then
        echo -e "\n\n********************************* NOTEBOOK EMPRESA ***********************************************"

        sudo ua attach C12Jp442FKeioyspXdSyrbG9aHn9hw

        echo -e "\n\n**************************************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.kde.umbrello -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

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
sudo apt --fix-broken install -y


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
sudo dpkg -i eclipse-jee-2022-12.deb
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
sudo dpkg -i insync_3.8.4.50481-jammy_amd64.deb
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


## One Drive
sudo dpkg -i onedriver_0.13.0-1_amd64.deb
sudo apt --fix-broken install -y
## https://software.opensuse.org/download.html?project=home%3Ajstaf&package=onedriver


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y


## Postman
sudo dpkg -i postman-10.11.2.deb
sudo apt --fix-broken install -y


## PyCharm
sudo dpkg -i pycharm-community-2022.3.3.deb
sudo apt --fix-broken install -y


## Scene Builder
sudo dpkg -i SceneBuilder-19.0.0.deb
sudo apt --fix-broken install -y


## Spring tool Suite
sudo dpkg -i --force-overwrite sts-4.17.2.RELEASE.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_5.0.2_amd64.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i code_1.74.2-1671533413_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G5.1.3.deb
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

rm /home/$USER/Templates/DOC\ Document.docx
mv /home/$USER/Templates/DOCX\ Document.docx /home/$USER/Templates/Document.docx

rm /home/$USER/Templates/PPT\ Presentation.ppt
mv /home/$USER/Templates/PPTX\ Presentation.pptx /home/$USER/Templates/Presentation.pptx

rm /home/$USER/Templates/XLS\ Worksheet.xls
mv /home/$USER/Templates/XLSX\ Worksheet.xlsx /home/$USER/Templates/Worksheet.xlsx

echo -e "\n\n\n**************************************************************************************************************************************"



## Atualizando a maneira de atualizar as keys dos repositorio sao salva
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
