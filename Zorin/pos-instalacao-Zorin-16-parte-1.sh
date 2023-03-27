#!/bin/bash



## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio Servidores
mkdir /home/$USER/Servidores/

## Criando diretorio do OBS Studio
mkdir /home/$USER/Vídeos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir /home/$USER/Instalacao/Script/

##Criando diretorio Angular dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Angular-Spring

##Criando diretorio Java dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Java


## Criando diretorio jvm dentro do diretorio /usr/lib/
## que e pra onde vao ser copiados os arquivos do JDK
sudo mkdir /usr/lib/jvm/


## Instalar software de terceiros
sudo apt-get install -y ubuntu-restricted-extras


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  /home/$USER/Modelos/shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi


## Entrando dentro do diretorio
## onde vao ficar os programaas
## que precisao de dwonloads
## para serem istalados
cd /home/$USER/Downloads/Programas/


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt-get update -y
sudo apt-get install -y sharutils
sudo apt-get install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress



## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/s/mywfsbpwu6n71zq/4kvideodownloader_4.21.7-1_amd64.deb?dl=0
fi


## Download Atom
echo -e "\n\n\n Atom"
if [ -e atom-amd64.deb ];then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    curl -L -o atom-amd64.deb https://www.dropbox.com/s/bc0b77aexg2fkjg/atom-amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena-etcher_1.10.19_amd64.deb ];then
    echo "O arquivo  balena-etcher_1.10.19_amd64.deb  ja existe"
else
    curl -L -o balena-etcher_1.10.19_amd64.deb https://www.dropbox.com/s/shs856b4ihlekvw/balena-etcher_1.10.19_amd64.deb?dl=0
fi


## Download BleachBit
echo -e "\n\n\n BleachBit"
if [ -e bleachbit_4.4.2-0_all_ubuntu2004.deb ];then
    echo "O arquivo  bleachbit_4.4.2-0_all_ubuntu2004.deb  ja existe"
else
    curl -L -o bleachbit_4.4.2-0_all_ubuntu2004.deb https://www.dropbox.com/s/80zmmptlmo9r1m8/bleachbit_4.4.2-0_all_ubuntu2004.deb?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e chrome-stable_current_amd64.deb ];then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o chrome-stable_current_amd64.deb https://www.dropbox.com/s/xdyxcjroxuxguv2/chrome-stable_current_amd64.deb?dl=0
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-lite-22.2.0-amd64.deb ];then
    echo "O arquivo  dbeaver-lite-22.2.0-amd64.deb  ja existe"
else
    curl -L -o dbeaver-lite-22.2.0-amd64.deb https://www.dropbox.com/s/cn7tqgjmnqoyiyn/dbeaver-lite-22.2.0-amd64.deb?dl=0
fi


## Download Dropbox
echo -e "\n\n\n Dropbox"
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
    curl -L -o dropbox_2020.03.04_amd64.deb https://www.dropbox.com/s/iozwc5taa2qax2u/dropbox_2020.03.04_amd64.deb?dl=0
fi


## Download Eclipse
echo -e "\n\n\n Eclipse"
if [ -e eclipse-jee-2022-09.deb ];then
    echo "O arquivo  eclipse-jee-2022-09.deb  ja existe"
else
    curl -L -o eclipse-jee-2022-09.deb https://www.dropbox.com/s/qyour3waxk15qa6/eclipse-jee-2022-09.deb?dl=0
fi


## Download Figma
echo -e "\n\n\n Figma"
if [ -e figma-linux_0.10.0_linux_amd64.deb ];then
    echo "O arquivo  figma-linux_0.10.0_linux_amd64.deb  ja existe"
else
    curl -L -o figma-linux_0.10.0_linux_amd64.deb https://www.dropbox.com/s/wdxg3yaoecubr4o/figma-linux_0.10.0_linux_amd64.deb?dl=0
fi


## Download GitKraken
echo -e "\n\n\n GitKraken"
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
    curl -L -o gitkraken-amd64.deb https://www.dropbox.com/s/yre89j7lrh7w407/gitkraken-amd64.deb?dl=0
fi


## Download Insomnia
echo -e "\n\n\n Insomnia"
if [ -e Insomnia.Core-2022.6.0.deb ];then
    echo "O arquivo  Insomnia.Core-2022.6.0.deb  ja existe"
else
    curl -L -o Insomnia.Core-2022.6.0.deb https://www.dropbox.com/s/4ab5ggtrvksbhui/Insomnia.Core-2022.6.0.deb?dl=0
fi


## Download Insync
echo -e "\n\n\n Insync"
if [ -e insync_3.7.14.50440-focal_amd64.deb ];then
    echo "O arquivo  insync_3.7.14.50440-focal_amd64.deb ja existe"
else
    curl -L -o insync_3.7.14.50440-focal_amd64.deb https://www.dropbox.com/s/52xoqe1ijh7ajyq/insync_3.7.14.50440-focal_amd64.deb?dl=0
fi


## Download Japersoft Studio
echo -e "\n\n\n Japersoft Studio"
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
    curl -L -o jaspersoft-sudio-6.20.0_linux_amd64.deb https://www.dropbox.com/s/auezdqr6puio9we/jaspersoft-sudio-6.20.0_linux_amd64.deb?dl=0
fi


## Download JDK-17
echo -e "\n\n\n JDK"
if [ -d jdk-17 ];then
    sudo cp -r jdk-17 /opt/
else
    curl -L -o openjdk-17_35_linux-x64_bin.tar.gz https://www.dropbox.com/s/ch9h9fni6co9lkn/openjdk-17_35_linux-x64_bin.tar.gz?dl=0

    tar xvzf openjdk-17_35_linux-x64_bin.tar.gz
    sudo cp -r jdk-17 /opt/
    rm openjdk-17_35_linux-x64_bin.tar.gz
fi


# Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/sozukz41qxl1tfa/lombok.jar?dl=0
fi


## Download Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.6 ];then
    sudo cp -r apache-maven-3.8.6 /opt/
else
    curl -L -o apache-maven-3.8.6-bin.tar.gz https://www.dropbox.com/s/vej28bg0b1uhxp7/apache-maven-3.8.6-bin.tar.gz?dl=0

    tar xvzf apache-maven-3.8.6-bin.tar.gz
    sudo cp -r apache-maven-3.8.6 /opt/
    rm apache-maven-3.8.6-bin.tar.gz
fi


## Download Microsoft Teams
echo -e "\n\n\n Microsoft Teams"
if [ -e teams_1.5.00.23861_amd64.deb ];then
    echo "O arquivo  teams_1.5.00.23861_amd64.deb  ja existe"
else
    curl -L -o teams_1.5.00.23861_amd64.deb https://www.dropbox.com/s/x7kgwrl9ie2y8f2/teams_1.5.00.23861_amd64.deb?dl=0
fi


## Download Netbeans
echo -e "\n\n\n Netbeans"
if [ -e netbeans_16-1_all.deb ];then
    echo "O arquivo  netbeans_16-1_all.deb  ja existe"
else
    curl -L -o netbeans_16-1_all.deb https://www.dropbox.com/s/supmbfo91zc59cr/netbeans_16-1_all.deb?dl=0
fi


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/k22vzxlcp441af9/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.16.0.RELEASE.deb ];then
    echo "O arquivo  sts-4.16.0.RELEASE.deb  ja existe"
else
    curl -L -o sts-4.16.0.RELEASE.deb https://www.dropbox.com/s/r49cmygzr3rgt9r/sts-4.16.0.RELEASE.deb?dl=0
fi



## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML_5.0.2_amd64.deb ];then
    echo "O arquivo  StarUML_5.0.2_amd64.deb  ja existe"
else
    curl -L -o StarUML_5.0.2_amd64.deb https://www.dropbox.com/s/qps6kw1ozyhm068/StarUML_5.0.2_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.72.2-1665614327_amd64.deb ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o code_1.72.2-1665614327_amd64.deb https://www.dropbox.com/s/n4w951bb5vb7iaw/code_1.72.2-1665614327_amd64.deb?dl=0
fi


## Download VMware player
echo -e "\n\n\n VMware player"
if [ -e VMware-Player-Full-17.0.0-20800274.x86_64.bundle ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o VMware-Player-Full-17.0.0-20800274.x86_64.bundle https://www.dropbox.com/s/gcisypw88n9iaik/VMware-Player-Full-17.0.0-20800274.x86_64.bundle?dl=0
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servidores/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
else
    curl -L -o apache-tomcat-9.0.68.tar.gz https://www.dropbox.com/s/nsn2et4pg73ie5h/apache-tomcat-9.0.68.tar.gz?dl=0

    tar xvzf apache-tomcat-9.0.68.tar.gz
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    rm apache-tomcat-9.0.68.tar.gz
fi


## Download Wildfly
echo -e "\n\n\n Wildfly"
if [ -d /home/$USER/Servidores/wildfly-26.1.2.Final ];then
    echo "O diretorio  /home/$USER/Servidores/wildfly-26.1.2.Final  ja existe"
else
    curl -L -o wildfly-26.1.2.Final.tar.gz https://www.dropbox.com/s/u8211vat0fcetg8/wildfly-26.1.2.Final.tar.gz?dl=0

    tar xvzf wildfly-26.1.2.Final.tar.gz
    cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
    rm wildfly-26.1.2.Final.tar.gz
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
    echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
    curl -L -o netbeans-plugins.tar.xz https://www.dropbox.com/s/km1z8mx1tpn93nh/netbeans-plugins.tar.xz?dl=0

    tar xvf netbeans-plugins.tar.xz
    cp -r netbeans-plugins /home/$USER/Instalacao/
    rm netbeans-plugins.tar.xz
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
    curl -L -o drivers-JDBC.tar.xz https://www.dropbox.com/s/luy42jvcpkcb0ms/drivers-JDBC.tar.xz?dl=0

    tar xvf drivers-JDBC.tar.xz
    cp -r drivers-JDBC /home/$USER/Instalacao/
    rm drivers-JDBC.tar.xz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
    curl -L -o wallpaper.tar.xz https://www.dropbox.com/s/2pdfx9whqx7h3j6/wallpaper.tar.xz?dl=0

    tar xvf wallpaper.tar.xz
    cp -r wallpaper /home/$USER/Imagens/
    rm wallpaper.tar.xz
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -e /home/luciano/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/luciano/.themes/WhiteSur-dark-solid  ja existe"
else
    curl -L -o WhiteSur-dark-solid.tar.xz https://www.dropbox.com/s/b9mnyhowzp781u7/WhiteSur-dark-solid.tar.xz?dl=0

    tar xvf WhiteSur-dark-solid.tar.xz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    rm WhiteSur-dark-solid.tar.xz
fi


## Download icones White Sur
echo -e "\n\n\n White Sur Icons"
if [ -e /home/luciano/.icons/WhiteSur ];then
    echo "O diretorio  /home/luciano/.icons/WhiteSur  ja existe"
else
    curl -L -o WhiteSur.tar.xz https://www.dropbox.com/s/qy1jv1k2uiz9m3a/WhiteSur.tar.xz?dl=0

    tar xvf WhiteSur.tar.xz
    cp -r WhiteSur /home/$USER/.icons/
    rm WhiteSur.tar.xz
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 ************************************************"

sudo update-alternatives --install /usr/bin/java java /opt/jdk-17/bin/java 2
sudo update-alternatives --config java

if grep -qi "export JAVA_HOME=/opt/jdk-17" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/opt/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

source /home/luciano/.bashrc

echo "**************************************************************************************************************************"




echo -e "\n\n\n******************** INSTALANDO  O  MAVEN ************************************************************************"

if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.8.6" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    echo "export MAVEN_HOME=/opt/apache-maven-3.8.6" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi

source /home/luciano/.bashrc

echo "****************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT-GET ***********************************"

## Atualizando PPA
sudo apt-get update -y

## Instalando fonte firecode
sudo apt install -y fonts-firacode

## Instalando Hardinfo
sudo apt-get install -y hardinfo

## Instalando fontes da Microsoft
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando VirtualBox
sudo apt-get install -y virtualbox

## Instalando gcc g++
sudo apt-get install -y gcc g++ make

## Instalando o Transmission
sudo apt-get install -y transmission

## Intalando Gnome tweaks tools
sudo apt-get install -y gnome-tweaks

## Instalando net-tools
sudo apt-get install -y net-tools

## Instalando libglib2.0-dev
sudo apt-get install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt-get install -y libgconf-2-4

## Instalando VLC
sudo apt-get install -y vlc

## Instalando Browser Epiphany
sudo apt-get install -y epiphany-browser

## Instalando Gnome extensions
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y chrome-gnome-shell

## Instalando Kolourpaint
sudo apt-get install -y kolourpaint

## Instalando o Dconf-editor
sudo apt-get install -y dconf-editor

## Instalando o Dconf-editor
sudo apt-get install guvcview

## Instalando Groovy
sudo apt-get update -y
curl -s get.sdkman.io | bash
source "/home/$USER/.sdkman/bin/sdkman-init.sh"

## Instalando Gparted
sudo apt-get install -y gparted

echo  "********************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT ******************************************************"

## Instalando o Git
sudo apt-get install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store


echo "**********************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************"

## Instalando e configurando Meld
sudo apt-get install -y meld
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "***********************************************************************************************************************************"




echo -e "\n\n\n************************ INSTALANDO  NODE, ANGULAR CLI, TYPESCRIPT, VUE.JS, VUEL CLI E QUASAR ****************************"

#Atualizando indices de repositorio
sudo apt-get update -y

## aumentando o numero de arquivos que o sistema pode monitorar
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf

## Instalando Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

## Instalando Angular CLI
sudo npm install -g  @angular/cli@13.1.2

## Instalando Typescript
sudo npm install -g typescript

## Instalando Vue.js
sudo npm install vue

## Instalando Vue CLI
sudo npm install -g @vue/cli

## Instalando o Quasar
sudo npm i -g @quasar/cli

echo "*************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB **********************************************************"

Instalando ADB
sudo apt-get update -y
sudo apt-get install -y adb
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm

echo "***************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES *******************************************************"

if [ -e chave-postgres.txt ];then
    rm chave-postgres.txt
fi

sudo sh -c 'echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

## Importando a chave de assinatrua do repositorio
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc --output chave-postgres.txt

## Adicionando a chave de repositorio
cat chave-postgres.txt | sudo apt-key add -

## deletando chave
rm chave-postgres.txt

sudo apt-get update -y
sudo apt-get install -y postgresql-12
sudo apt-get install -y postgresql-client-12
sudo apt-get install -y libpq-dev
sudo apt-get install -y postgresql-server-dev-12

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"

echo "******************************************************************************************************************************************"



echo -e "\n\n\n***************************************** INSTALANDO  VMWARE WORKSTATION *******************************************************"

## Transformando arquivos de .bundle em arquivos executaveis
chmod +x *.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt-get install -y build-essential
sudo apt-get install -y manpages-dev

## Instalando VMware
sudo ./VMware-Player-Full-17.0.0-20800274.x86_64.bundle

cho "******************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  OU  MYSQL ************************************************"

cd /home/$USER/Downloads/Programas/
while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo apt-get install software-properties-common dirmngr apt-transport-https
        sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
        sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.ufro.cl/mariadb/repo/10.5/ubuntu 2 main'
        sudo apt update -y
        sudo apt install -y mariadb-server
        sudo systemctl start mariadb
        sudo systemctl enable mariadb
        sudo mysql_secure_installation

        ## Dando ao usuario root todas as permissoes no SGBD MariaDB
        sudo mysql -u root "-p789789" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@localhost IDENTIFIED BY '789789';"

        ## Criando ususario luciano
        sudo mysql -u root "-p789789" -e "CREATE USER 'luciano'@'localhost' IDENTIFIED BY '789789';"

        ## Dando ao usuario luciano todas as permissoes no SGBD MariaDB
        sudo mysql -u root "-p789789" -e "GRANT ALL PRIVILEGES ON *.* TO 'luciano'@localhost IDENTIFIED BY '789789';"

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  MARIADB ********************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  MYSQL ********************"

        echo -e "\n\n\Mysql - 36 KB"
        if [ -e mysql-apt-config_0.8.22-1_all.deb ];then
            echo "O mysql-apt-config_0.8.22-1_all.deb ja existe"
        else
            curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
        fi


        sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
        sudo apt --fix-broken install -y
        sudo apt-get update -y
        sudo apt-get install -y mysql-server
        sudo apt-get install -y mysql-workbench-community

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO ******************************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK"

    read opcao

    if [ $opcao -eq 1 ];then
        echo -e "\n\n******************** DESKTOP ********************************************"

        sudo apt install -y nvidia-340

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** NOTEBOOK ********************************************"

        sudo apt install -y nvidia-driver-515

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "*******************************************************************************************************************************************************"



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

echo "**************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *************************************************************"

flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub org.kde.umbrello -y

echo "*******************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  SNAP ******************************************************************"

## Instalando Visualg
sudo snap install wine-platform-runtime
sudo snap install wine-platform-3-stable
sudo sudo snap install visualg
sudo snap connect visualg:wine-runtime wine-platform-runtime
sudo snap connect visualg:wine-3-stable wine-platform-3-stable
sudo snap refresh visualg

echo -e "\n\n\n***************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB *************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb

## Tornando todos os arquivos .jar
## em arquivos executaveis
chmod +x lombok.jar


## Voltando para pasta de programas
cd /home/$USER/Downloads/Programas/


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Apache Netbeans
sudo dpkg -i netbeans_16-1_all.deb
sudo apt --fix-broken install -y

## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y


## Balena Etcher
sudo dpkg -i balena-etcher_1.10.19_amd64.deb
sudo apt --fix-broken install -y


## BleachBit
sudo dpkg -i bleachbit_4.4.2-0_all_ubuntu2004.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-lite-22.2.0-amd64.deb
sudo apt --fix-broken install -y


## Dropbox
sudo dpkg -i dropbox_2020.03.04_amd64.deb
sudo apt --fix-broken install -y


echo -e "\n\n\n ***** INSTALANDO  ECLIPSE *****"
sudo dpkg -i eclipse-jee-2022-09.deb
sudo apt --fix-broken install -y
sudo java -jar lombok.jar


echo -e "\n\n\n ***** SPRING  TOOLS  SUITE *****"
sudo dpkg -i --force-overwrite sts-4.16.0.RELEASE.deb
sudo apt --fix-broken install -y
sudo java -jar lombok.jar


## Insomnia
sudo dpkg -i Insomnia.Core-2022.6.0.deb
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
sudo dpkg -i insync_3.7.14.50440-focal_amd64.deb
sudo apt --fix-broken install -y


## Japersoft studio
sudo dpkg -i jaspersoft-sudio-6.20.0_linux_amd64.deb
sudo apt --fix-broken install -y


## Microsoft Teams
sudo dpkg -i teams_1.5.00.23861_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_5.0.2_amd64.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i code_1.72.2-1665614327_amd64.deb
sudo apt --fix-broken install -y

echo "*******************************************************************************************************************************"




## Removendo arquivos da pasta Modelos
sudo rm /home/$USER/Modelos/LibreOffice\ Writer.odt
sudo rm /home/$USER/Modelos/LibreOffice\ Calc.ods
sudo rm /home/$USER/Modelos/LibreOffice\ Draw.odg
sudo rm /home/$USER/Modelos/LibreOffice\ Impress.odp
