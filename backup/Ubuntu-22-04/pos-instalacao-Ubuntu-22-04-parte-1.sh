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

## Criando diretorio applications
mkdir /home/$USER/.local/share/applications/

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

## Pasta onde vão ficar os servidores
mkdir /home/$USER/Servidores

## Criando diretorio jvm dentro do diretorio /usr/lib/
## que e pra onde vao ser copiados os arquivos do JDK
sudo mkdir /usr/lib/jvm/


## Instalar software de terceiros
sudo apt-get install -y ubuntu-restricted-extras

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


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/script-DB.sql ];then
    echo "O arquivo  script-DB.sql  ja existe"
else
    touch /home/$USER/Modelos/script-DB.sql
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


## Instalando comando curl
sudo apt-get install -y curl


## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/s/mywfsbpwu6n71zq/4kvideodownloader_4.21.7-1_amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena-etcher-electron_1.7.9_amd64.deb ];then
    echo "O arquivo balena-etcher-electron_1.7.9_amd64.deb ja existe"
else
    curl -L -o balena-etcher-electron_1.7.9_amd64.deb https://www.dropbox.com/s/81uqd7bsy4k14c9/balena-etcher-electron_1.7.9_amd64.deb?dl=0
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
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/8yrjdaiuj7hes2t/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-lite-22.2.0-amd64.deb ];then
    echo "O arquivo  dbeaver-lite-22.2.0-amd64.deb  ja existe"
else
    curl -L -o dbeaver-lite-22.2.0-amd64.deb https://www.dropbox.com/s/cn7tqgjmnqoyiyn/dbeaver-lite-22.2.0-amd64.deb?dl=0
fi


## Download DbVisualizer
echo -e "\n\n\n DbVisualizer"
if [ -e dbvis_linux_14_0_1.deb ];then
    echo "O arquivo  dbvis_linux_14_0_1.deb  ja existe"
else
    curl -L -o dbvis_linux_14_0_1.deb https://www.dropbox.com/s/k73l2b40pcbmawf/dbvis_linux_14_0_1.deb?dl=0
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
if [ -d eclipse ];then
    sudo cp -r eclipse /opt/
else
    curl -L -o eclipse-jee-2022-09-R-linux-gtk-x86_64.tar.gz https://www.dropbox.com/s/c2o9xresjstr33z/eclipse-jee-2022-09-R-linux-gtk-x86_64.tar.gz?dl=0

    tar xvzf eclipse-jee-2022-09-R-linux-gtk-x86_64.tar.gz
    sudo cp -r eclipse /opt/
    rm eclipse-jee-2022-09-R-linux-gtk-x86_64.tar.gz
fi


## Download Figma
echo -e "\n\n\n Figma"
if [ -e figma-linux_0.10.0_linux_amd64.deb ];then
    echo "O arquivo  figma-linux_0.10.0_linux_amd64.deb  ja existe"
else
    curl -L -o figma-linux_0.10.0_linux_amd64.deb https://www.dropbox.com/s/wdxg3yaoecubr4o/figma-linux_0.10.0_linux_amd64.deb?dl=0
fi


## Download Firefox
echo -e "\n\n\n Firefox"
if [ -d firefox-107.0 ];then
    sudo cp -r firefox-107.0 /opt/
else
    curl -L -o firefox-107-0.tar.gz https://www.dropbox.com/s/qhclfx37i2ndwc5/firefox-107-0.tar.gz?dl=0

    tar xvzf firefox-107-0.tar.gz
    sudo cp -r firefox-107.0 /opt/
    rm firefox-107-0.tar.gz
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
if [ -e insync_3.7.14.50440-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.7.14.50440-jammy_amd64.deb ja existe"
else
    curl -L -o insync_3.7.14.50440-jammy_amd64.deb https://www.dropbox.com/s/j0x3tsk88zv6iws/insync_3.7.14.50440-jammy_amd64.deb?dl=0
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


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/k22vzxlcp441af9/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Skype
echo -e "\n\n\n Skype"
if [ -e skypeforlinux-64.deb ];then
    echo "O arquivo  skypeforlinux-64.deb  ja existe"
else
    curl -L -o skypeforlinux-64.deb https://www.dropbox.com/s/3bn9bcy02wii7wm/skypeforlinux-64.deb?dl=0
fi


## Download Spring Tools Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -d sts-4.16.0.RELEASE ];then
    sudo cp -r sts-4.16.0.RELEASE/ /opt/
else
    curl -L -o spring-tool-suite-4-4.16.0.RELEASE-e4.25.0-linux.gtk.x86_64.tar.gz https://www.dropbox.com/s/sycgzbzqjq42pn8/spring-tool-suite-4-4.16.0.RELEASE-e4.25.0-linux.gtk.x86_64.tar.gz?dl=0

    tar xvzf spring-tool-suite-4-4.16.0.RELEASE-e4.25.0-linux.gtk.x86_64.tar.gz
    sudo cp -r sts-4.16.0.RELEASE/ /opt/
    rm spring-tool-suite-4-4.16.0.RELEASE-e4.25.0-linux.gtk.x86_64.tar.gz
fi


## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML_5.0.2_amd64.deb ];then
    echo "O arquivo  StarUML_5.0.2_amd64.deb  ja existe"
else
    curl -L -o StarUML_5.0.2_amd64.deb https://www.dropbox.com/s/qps6kw1ozyhm068/StarUML_5.0.2_amd64.deb?dl=0
fi


## Download Microsoft Teams
echo -e "\n\n\n Microsoft Teams"
if [ -e teams_1.5.00.23861_amd64.deb ];then
    echo "O arquivo  teams_1.5.00.23861_amd64.deb  ja existe"
else
    curl -L -o teams_1.5.00.23861_amd64.deb https://www.dropbox.com/s/x7kgwrl9ie2y8f2/teams_1.5.00.23861_amd64.deb?dl=0
fi


## Download VirtualBox
echo -e "\n\n\n VirtualBox"
if [ -e virtualbox-7.0_7.0.4-154605_Ubuntu_jammy_amd64.deb ];then
    echo "O arquivo  virtualbox-7.0_7.0.4-154605_Ubuntu_jammy_amd64.deb  ja existe"
else
    curl -L -o virtualbox-7.0_7.0.4-154605_Ubuntu_jammy_amd64.deb https://www.dropbox.com/s/vpfb12iw2i8xc1m/virtualbox-7.0_7.0.4-154605_Ubuntu_jammy_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.72.2-1665614327_amd64.deb ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o code_1.72.2-1665614327_amd64.deb https://www.dropbox.com/s/n4w951bb5vb7iaw/code_1.72.2-1665614327_amd64.deb?dl=0
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
## sudo apt-get install -y virtualbox

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



echo -e "\n\n\n******************** CRIANDO  ICONE  DO  SPRING  TOOLS  SUITE ****************************************************************************"

    echo "[Desktop Entry]" | sudo tee /usr/share/applications/spring-tools-suite.desktop
    echo "Comment=" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "Terminal=false" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "Name=Spring Tools Suite" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "Exec=/opt/sts-4.16.0.RELEASE/SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "Type=Application" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "Icon=/opt/sts-4.16.0.RELEASE/icon.xpm" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
    echo "StartupWMClass=SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop

    ## Instalando Lombok no Spring Tools Suite
    chmod +x lombok.jar
    sudo java -jar lombok.jar

echo "****************************************************************************************************************************************************"



echo -e "\n\n\n******************** CRIANDO  ICONE  DO  ECLIPSE *******************************************************************************************"

    echo "[Desktop Entry]" | sudo tee /usr/share/applications/eclipse.desktop
    echo "Comment=" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "Terminal=false" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "Name=Eclipse" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "Exec=/opt/eclipse/eclipse" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "Type=Application" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "Icon=/opt/eclipse/icon.xpm" | sudo tee -a /usr/share/applications/eclipse.desktop
    echo "StartupWMClass=SpringToolSuite4" | sudo tee -a /usr/share/applications/eclipse.desktop

    ## Instalando Lombok no Spring Tools Suite
    chmod +x lombok.jar
    sudo java -jar lombok.jar

echo "******************************************************************************************************************************************************"



echo -e "\n\n\n***************************************************** INSTALANDO  FIREFOX *****************************************************************"

    sudo snap remove --purge firefox

    echo "[Desktop Entry]" | sudo tee /usr/share/applications/firefox.desktop
    echo "Comment=" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "Terminal=false" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "Name=Firefox" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "Exec=/opt/firefox-107.0/firefox-bin" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "Type=Application" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "Icon=/opt/firefox-107.0/browser/chrome/icons/default/default128.png" | sudo tee -a /usr/share/applications/firefox.desktop
    echo "StartupWMClass=firefox" | sudo tee -a /usr/share/applications/firefox.desktop

echo "****************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  OU  MYSQL ************************************************"

cd /home/$USER/Downloads/Programas/
while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo apt-get install -y software-properties-common dirmngr apt-transport-https
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


        sudo apt install -y ./mysql-apt-config_0.8.24-1_all.deb
        sudo apt-get update -y
        sudo apt-get install -y mysql-server

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done



echo "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK******************************************************"

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "******************************************REINICIAR  O  COMPUTADOR************************************************************************"
