#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Entrando na para pasta de programas
cd /home/$USER/Downloads/Programas/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/TXT.txt ];then
    echo "O arquivo  TXT.txt  ja existe"
else
    touch /home/$USER/Modelos/TXT.txt
fi


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install -y sharutils
sudo apt install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress


## Instalando comando curl
sudo apt install -y curl

## Download Astah
echo -e "\n\n\n Astah"
if [ -e astah-uml_9.0.0.1778f1-0_all.deb ];then
    echo "O arquivo  astah-uml_9.0.0.1778f1-0_all.deb  ja existe"
else
    curl -L -o astah-uml_9.0.0.1778f1-0_all.deb https://www.dropbox.com/s/4lonky5fwgj9lev/astah-uml_9.0.0.1778f1-0_all.deb?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/rdkmjimzbpozxbh/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
elif [ -d wallpaper ];then
    cp -r wallpaper /home/$USER/Imagens/
    echo -e "\n\n O diretorio  wallpaper  foi copiado"
else
    curl -L -o wallpaper.tar.gz https://www.dropbox.com/s/6g7x59anuyo9bdy/wallpaper.tar.gz?dl=0
    descompactar-tar-gz wallpaper.tar.gz
    cp -r wallpaper /home/$USER/Imagens/
    rm wallpaper.tar.gz
fi



echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando gcc g++
sudo apt install -y gcc g++ make

## Instalando o Dconf-editor
sudo apt install -y dconf-editor

## Instalando o JDK 8
sudo apt install openjdk-8-jdk

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** INSTALANDO  PACOTES  .DEB *************************************************************"

chmod +x *.deb

## Astah
sudo dpkg -i astah-uml_9.0.0.1778f1-0_all.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
