#!/bin/bash

## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## downloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Entrando no diretorio programas
cd /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio Servidores
mkdir /home/$USER/Servidores/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir -p /home/$USER/Instalacao/Script/


## Criando modelo de arquivo do tipo txt
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



## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena_etcher-1.14.3-1.x86_64.rpm ];then
    echo "O arquivo  balena_etcher-1.14.3-1.x86_64.rpm  ja existe"
else
    curl -L -o balena_etcher-1.14.3-1.x86_64.rpm https://www.dropbox.com/s/j1z7uz1hjl6yw6z/balena_etcher-1.14.3-1.x86_64.rpm?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_x86_64.rpm ];then
    echo "O arquivo  google-chrome-stable_current_x86_64.rpm  ja existe"
else
    curl -L -o google-chrome-stable_current_x86_64.rpm https://www.dropbox.com/s/8mss29wycqfzr7o/google-chrome-stable_current_x86_64.rpm?dl=0
fi


## Download Compactador
echo -e "\n\n\n Compactador-tar-gz"
if [ -e compactar-tar-gz ];then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    curl -L -o compactar-tar-gz https://www.dropbox.com/s/f12rnz1806rbpoo/compactar-tar-gz?dl=0
    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-le-22.3.0-stable.x86_64.rpm ];then
    echo "O arquivo  dbeaver-le-22.3.0-stable.x86_64.rpm  ja existe"
else
    curl -L -o dbeaver-le-22.3.0-stable.x86_64.rpm https://www.dropbox.com/s/vjexe9fsy3prhkb/dbeaver-le-22.3.0-stable.x86_64.rpm?dl=0
fi


## Download Descompactador
echo -e "\n\n\n Decompactador-tar-gz"
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    curl -L -o descompactar-tar-gz https://www.dropbox.com/s/vytdyan9ec5e7td/descompactar-tar-gz?dl=0
    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi


## Download VirtualBox
echo -e "\n\n\n VirtualBox"
if [ -e VirtualBox-6.1-6.1.42_155177_el8-1.x86_64.rpm ];then
    echo "O arquivo  VirtualBox-6.1-6.1.42_155177_el8-1.x86_64.rpm  ja existe"
else
    curl -L -o VirtualBox-6.1-6.1.42_155177_el8-1.x86_64.rpm https://www.dropbox.com/s/ph4nkk5v1xgi9qd/VirtualBox-6.1-6.1.42_155177_el8-1.x86_64.rpm?dl=0
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servidores/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
elif [ -d apache-tomcat-9.0.68 ];then
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    echo -e "\n\n O diretorio  apache-tomcat-9.0.68 foi copiado"
else
    curl -L -o apache-tomcat-9.0.68.tar.gz https://www.dropbox.com/s/nsn2et4pg73ie5h/apache-tomcat-9.0.68.tar.gz?dl=0
    descompactar-tar-gz apache-tomcat-9.0.68.tar.gz
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    rm apache-tomcat-9.0.68.tar.gz
fi


## Download Wildfly
echo -e "\n\n\n Wildfly"
if [ -d /home/$USER/Servidores/wildfly-26.1.2.Final ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
elif [ -d wildfly-26.1.2.Final ];then
    cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
    echo -e "\n\n O diretorio  wildfly-26.1.2.Final  foi copiado"
else
  curl -L -o wildfly-26.1.2.Final.tar.gz https://www.dropbox.com/s/u8211vat0fcetg8/wildfly-26.1.2.Final.tar.gz?dl=0
  descompactar-tar-gz wildfly-26.1.2.Final.tar.gz
  cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
  rm wildfly-26.1.2.Final.tar.gz
fi


## Instalando curl
sudo dnf update -y
sudo dnf install curl -y



echo -e "\n\n\n************************************** INSTALANDO  APLICATIVOS  DNF  OU  YUM *********************************************************"

sudo dnf update -y

## Instalando Gnome tweak Tools
sudo dnf install gnome-tweaks -y

## Instalando gparted
sudo dnf install epel-release -y
sudo dnf update -y
sudo dnf install gparted -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

sudo dnf install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-11 **************************************************************"

sudo dnf install java-17-openjdk java-17-openjdk-devel -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***********************************************INSTALANDO JENKINS ********************************************************************"

sudo dnf check-update
sudo dnf install dnf-utils -y
sudo dnf install epel-release -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo dnf install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
## sudo systemctl status jenkins
## sudo cat /var/lib/jenkins/secrets/initialAdminPassword
## http://localhost:8080

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************* INSTALNADO  DOCKER  E  DOCKER  COMPOSE *********************************************************"


## Instalando Docker
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo dnf update -y
sudo dnf remove podman buildah
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
## sudo systemctl status docker.service
## docker info
## docker version
sudo usermod -aG docker $USER
source /home/$USER/.bash_profile

## Instalando Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## docker-compose --version

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************************* INSTALANDO  PACOTES  RPM ***********************************************************"

sudo dnf localinstall google-chrome-stable_current_x86_64.rpm -y
sudo dnf localinstall dbeaver-le-22.3.0-stable.x86_64.rpm -y
sudo dnf localinstall balena_etcher-1.14.3-1.x86_64.rpm -y
sudo dnf localinstall VirtualBox-6.1-6.1.42_155177_el8-1.x86_64.rpm -y

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n*******************************************INSTALANDO  SUPORTE  AO  FLATPAK **********************************************************"

sudo dnf install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n******************************************** INSTALANDO  SUPORTE  AO  SNAP ***********************************************************"

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo subscription-manager repos --enable "rhel-*-optional-rpms" --enable "rhel-*-extras-rpms"
sudo yum install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

echo -e "\n\n\n************************************************REINICIAR  O  COMPUTADOR *************************************************************"
