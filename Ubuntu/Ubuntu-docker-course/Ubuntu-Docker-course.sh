#!/bin/bash


## Instalando o curl
sudo apt update -y
sudo apt install curl -y


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/rdkmjimzbpozxbh/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    curl -L -o dbeaver-le_22.3.0_amd64.deb https://www.dropbox.com/s/mrkvm0699h06age/dbeaver-le_22.3.0_amd64.deb?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.16.0.RELEASE.deb ];then
    echo "O arquivo  sts-4.16.0.RELEASE.deb  ja existe"
else
    curl -L -o sts-4.16.0.RELEASE.deb https://www.dropbox.com/s/r49cmygzr3rgt9r/sts-4.16.0.RELEASE.deb?dl=0
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

## Download JDK-17
echo -e "\n\n\n JDK"
if [ -d jdk-17 ];then
    sudo cp -r jdk-17 /opt/
else
    curl -L -o openjdk-17_35_linux-x64_bin.tar.gz https://www.dropbox.com/s/ch9h9fni6co9lkn/openjdk-17_35_linux-x64_bin.tar.gz?dl=0
    descompactar-tar-gz openjdk-17_35_linux-x64_bin.tar.gz
    sudo cp -r jdk-17 /opt/
    rm openjdk-17_35_linux-x64_bin.tar.gz
fi


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /opt/jdk-17/bin/java 2
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/opt/jdk-17" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/opt/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
source /home/luciano/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**********************************************INSTALANDO  O  MAVEN *******************************************************************"

## Download do Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.6 ];then
    sudo cp -r apache-maven-3.8.6 /opt/
else
    curl -L -o apache-maven-3.8.6-bin.tar.gz https://www.dropbox.com/s/vej28bg0b1uhxp7/apache-maven-3.8.6-bin.tar.gz?dl=0
    descompactar-tar-gz apache-maven-3.8.6-bin.tar.gz
    sudo cp -r apache-maven-3.8.6 /opt/
    rm apache-maven-3.8.6-bin.tar.gz
fi


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.8.6" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    echo "export MAVEN_HOME=/opt/apache-maven-3.8.6" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi


## Usando o comando source para executar o arquivo .bashrc
source /home/luciano/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************** INSTALANDO  DOCKER  E  DOCKER  COMPOSE **************************************************"

sudo apt update -y

## Instalando o Docker
sudo apt-get install -y docker.io

## Instalando Docker Compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## docker-compose --version

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************** INSTALANDO  PACOTES  DEB ********************************************************"

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i dbeaver-le_22.3.0_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i sts-4.16.0.RELEASE.deb
sudo apt --fix-broken install -y
