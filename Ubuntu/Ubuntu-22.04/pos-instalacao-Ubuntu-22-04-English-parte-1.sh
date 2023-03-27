#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Software/

## Entrando na para pasta de Software
cd /home/$USER/Downloads/Software/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio Servers
mkdir /home/$USER/Servers/

## Criando diretorio do OBS Studio
mkdir /home/$USER/Videos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Installation
mkdir -p /home/$USER/Installation/ISO/

## Criando diretorio Script dentro da pasta Installation
mkdir /home/$USER/Installation/Script/

##Criando diretorio Angular dentro do diretorio Projects
mkdir -p /home/$USER/Projects/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projects
mkdir /home/$USER/Projects/Angular-Spring

##Criando diretorio Java dentro do diretorio Projects
mkdir /home/$USER/Projects/Java


## Instalar software de terceiros
sudo apt install -y ubuntu-restricted-extras


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Templates/TXT.txt ];then
    echo "O arquivo  TXT.txt  ja existe"
else
    touch /home/$USER/Templates/TXT.txt
fi


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Templates/shell-script.sh ];then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch /home/$USER/Templates/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Templates/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Templates/script-DB.sql ];then
    echo "O arquivo  script-DB.sql  ja existe"
else
    touch /home/$USER/Templates/script-DB.sql
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


## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/s/mywfsbpwu6n71zq/4kvideodownloader_4.21.7-1_amd64.deb?dl=0
fi

## Download Android Studio
echo -e "\n\n\n Android Studio"
if [ -e android-studio-2022.1.1.deb ];then
    echo "O arquivo  android-studio-2022.1.1.deb  ja existe"
else
    curl -L -o android-studio-2022.1.1.deb https://www.dropbox.com/s/gxnjiiztvbl8gwm/android-studio-2022.1.1.deb?dl=0
fi


## Download Atom
echo -e "\n\n\n Atom"
if [ -e atom-amd64.deb ];then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    curl -L -o atom-amd64.deb https://www.dropbox.com/s/pd3pauka0g8qaaw/atom-amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena-etcher-1.14.3.deb ];then
    echo "O arquivo  balena-etcher-1.14.3.deb  ja existe"
else
    curl -L -o balena-etcher-1.14.3.deb https://www.dropbox.com/s/gnsi5jqapb1o9wz/balena-etcher-1.14.3.deb?dl=0
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
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/rdkmjimzbpozxbh/google-chrome-stable_current_amd64.deb?dl=0
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
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    curl -L -o dbeaver-le_22.3.0_amd64.deb https://www.dropbox.com/s/mrkvm0699h06age/dbeaver-le_22.3.0_amd64.deb?dl=0
fi


## Download DbVisualizer
echo -e "\n\n\n DbVisualizer"
if [ -e dbvis_linux_14_0_1.deb ];then
    echo "O arquivo  dbvis_linux_14_0_1.deb  ja existe"
else
    curl -L -o dbvis_linux_14_0_1.deb https://www.dropbox.com/s/k73l2b40pcbmawf/dbvis_linux_14_0_1.deb?dl=0
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


## Download Dropbox
echo -e "\n\n\n Dropbox"
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
    curl -L -o dropbox_2020.03.04_amd64.deb https://www.dropbox.com/s/iozwc5taa2qax2u/dropbox_2020.03.04_amd64.deb?dl=0
fi


## Download Eclipse
echo -e "\n\n\n Eclipse"
if [ -e eclipse-jee-2022-12.deb ];then
    echo "O arquivo  eclipse-jee-2022-12.deb  ja existe"
else
    curl -L -o eclipse-jee-2022-12.deb https://www.dropbox.com/s/vmnnpbu1hp8w923/eclipse-jee-2022-12.deb?dl=0
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
if [ -e insync_3.8.4.50481-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.4.50481-jammy_amd64.deb ja existe"
else
    curl -L -o insync_3.8.4.50481-jammy_amd64.deb https://www.dropbox.com/s/ybgxyq4qzxn30o8/insync_3.8.4.50481-jammy_amd64.deb?dl=0
fi


## Download Intellij Community
echo -e "\n\n\n Intellij Community"
if [ -e intellij-community.deb ];then
    echo "O arquivo  intellij-community.deb ja existe"
else
    curl -L -o intellij-community.deb https://www.dropbox.com/s/ie2nmxt0ze4q40z/intellij-community.deb?dl=0
fi


## Download Japersoft Studio
echo -e "\n\n\n Japersoft Studio"
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
    curl -L -o jaspersoft-sudio-6.20.0_linux_amd64.deb https://www.dropbox.com/s/auezdqr6puio9we/jaspersoft-sudio-6.20.0_linux_amd64.deb?dl=0
fi


## Download Kdenlive
echo -e "\n\n\n Kdenlive"
if [ -e kdenlive-22.12.1.deb ];then
    echo "O arquivo  kdenlive-22.12.1.deb ja existe"
else
    curl -L -o kdenlive-22.12.1.deb https://www.dropbox.com/s/02q3821cxu7l28x/kdenlive-22.12.1.deb?dl=0
fi


## Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/sozukz41qxl1tfa/lombok.jar?dl=0
fi


## Download Microsoft Teams
echo -e "\n\n\n Microsoft Teams"
if [ -e teams_1.5.00.23861_amd64.deb ];then
    echo "O arquivo  teams_1.5.00.23861_amd64.deb  ja existe"
else
    curl -L -o teams_1.5.00.23861_amd64.deb https://www.dropbox.com/s/x7kgwrl9ie2y8f2/teams_1.5.00.23861_amd64.deb?dl=0
fi


## Download Mysql
echo -e "\n\n\n Mysql"
if [ -e mysql-apt-config_0.8.24-1_all.deb ];then
    echo "O mysql-apt-config_0.8.22-1_all.deb ja existe"
else
    curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
fi


## Download Netbeans
echo -e "\n\n\n Netbeans"
if [ -e netbeans_16-1_all.deb ];then
    echo "O arquivo  netbeans_16-1_all.deb  ja existe"
else
    curl -L -o netbeans_16-1_all.deb https://www.dropbox.com/s/supmbfo91zc59cr/netbeans_16-1_all.deb?dl=0
fi


## Download One Drive
echo -e "\n\n\n One drive"
if [ -e onedriver_0.13.0-1_amd64.deb ];then
    echo "O arquivo  onedriver_0.13.0-1_amd64.deb  ja existe"
else
    curl -L -o onedriver_0.13.0-1_amd64.deb https://www.dropbox.com/s/7abagzhiuzoz4wk/onedriver_0.13.0-1_amd64.deb?dl=0
fi


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/k22vzxlcp441af9/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Portugol studio
echo -e "\n\n\n Portugol Studio"
if [ -e portugol-studio-2.7.5-linux-x64.run ];then
    echo "O arquivo  portugol-studio-2.7.5-linux-x64.run  ja existe"
else
    curl -L -o portugol-studio-2.7.5-linux-x64.run https://www.dropbox.com/s/x9e9qgvud4y2wbt/portugol-studio-2.7.5-linux-x64.run?dl=0
fi


## Download Postman
echo -e "\n\n\n Postman"
if [ -e postman-10.11.2.deb ];then
    echo "O arquivo  postman-10.11.2.deb  ja existe"
else
    curl -L -o postman-10.11.2.deb https://www.dropbox.com/s/m7xg9t910t1d0w9/postman-10.11.2.deb?dl=0
fi


## Download PyCharm
echo -e "\n\n\n PyCharm"
if [ -e pycharm-community-2022.3.3.deb ];then
    echo "O arquivo  pycharm-community-2022.3.3.deb  ja existe"
else
    curl -L -o pycharm-community-2022.3.3.deb https://www.dropbox.com/s/y3lh6r7700tmbvo/pycharm-community-2022.3.3.deb?dl=0
fi


## Download Scene Builder
echo -e "\n\n\n Scene Builder"
if [ -e SceneBuilder-19.0.0.deb ];then
    echo "O arquivo  SceneBuilder-19.0.0.deb  ja existe"
else
    curl -L -o SceneBuilder-19.0.0.deb https://www.dropbox.com/s/vq6dlsyo1e4jcg0/SceneBuilder-19.0.0.deb?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.17.2.RELEASE.deb ];then
    echo "O arquivo  sts-4.17.2.RELEASE.deb  ja existe"
else
    curl -L -o sts-4.17.2.RELEASE.deb https://www.dropbox.com/s/h4vo6uv6pv9xjan/sts-4.17.2.RELEASE.deb?dl=0
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
if [ -e code_1.74.2-1671533413_amd64.deb ];then
    echo "O arquivo  code_1.74.2-1671533413_amd64.deb  ja existe"
else
    curl -L -o code_1.74.2-1671533413_amd64.deb https://www.dropbox.com/s/l38kjj16il3q83o/code_1.74.2-1671533413_amd64.deb?dl=0
fi


## Download VMware player
echo -e "\n\n\n VMware player"
if [ -e VMware-Player-Full-17.0.0-20800274.x86_64.bundle ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o VMware-Player-Full-17.0.0-20800274.x86_64.bundle https://www.dropbox.com/s/gcisypw88n9iaik/VMware-Player-Full-17.0.0-20800274.x86_64.bundle?dl=0
fi


## Download VMware player icon
echo -e "\n\n\n VMware player icon"
if [ -e vmware.png ];then
    echo "O arquivo  vmware.png  ja existe"
else
    curl -L -o vmware.png https://www.dropbox.com/s/lng1xgmb2e16ctq/vmware.png?dl=0
fi


## Download Waterfox
echo -e "\n\n\n Waterfox"
if [ -e waterfox-G5.1.3.deb ];then
    echo "O arquivo  waterfox-G5.1.3.deb  ja existe"
else
    curl -L -o waterfox-G5.1.3.deb https://www.dropbox.com/s/l849gpprp8yjory/waterfox-G5.1.3.deb?dl=0
fi


## WPS Office
echo -e "\n\n\n WPS Office"
if [ -e wps-office_11.1.0.11664.XA_amd64.deb ];then
    echo "O arquivo  wwps-office_11.1.0.11664.XA_amd64.deb  ja existe"
else
    curl -L -o wps-office_11.1.0.11664.XA_amd64.deb https://www.dropbox.com/s/6bxe3qvlk5xpo0x/wps-office_11.1.0.11664.XA_amd64.deb?dl=0
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servers/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servers/apache-tomcat-9.0.68  ja existe"
elif [ -d apache-tomcat-9.0.68 ];then
    cp -r apache-tomcat-9.0.68 /home/$USER/Servers/
    echo -e "\n\n O diretorio  apache-tomcat-9.0.68 foi copiado"
else
    curl -L -o apache-tomcat-9.0.68.tar.gz https://www.dropbox.com/s/nsn2et4pg73ie5h/apache-tomcat-9.0.68.tar.gz?dl=0
    descompactar-tar-gz apache-tomcat-9.0.68.tar.gz
    cp -r apache-tomcat-9.0.68 /home/$USER/Servers/
    rm apache-tomcat-9.0.68.tar.gz
fi


## Download Wildfly
echo -e "\n\n\n Wildfly"
if [ -d /home/$USER/Servers/wildfly-26.1.2.Final ];then
    echo "O diretorio  /home/$USER/Servers/apache-tomcat-9.0.68  ja existe"
elif [ -d wildfly-26.1.2.Final ];then
    cp -r wildfly-26.1.2.Final /home/$USER/Servers/
    echo -e "\n\n O diretorio  wildfly-26.1.2.Final  foi copiado"
else
  curl -L -o wildfly-26.1.2.Final.tar.gz https://www.dropbox.com/s/u8211vat0fcetg8/wildfly-26.1.2.Final.tar.gz?dl=0
  descompactar-tar-gz wildfly-26.1.2.Final.tar.gz
  cp -r wildfly-26.1.2.Final /home/$USER/Servers/
  rm wildfly-26.1.2.Final.tar.gz
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Installation/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Installation/netbeans-plugins  ja existe"
elif [ -d netbeans-plugins ];then
    cp -r netbeans-plugins /home/$USER/Installation/
    echo -e "\n\n O diretorio  netbeans-plugins  foi copiado"
else
    curl -L -o netbeans-plugins.tar.gz https://www.dropbox.com/s/gc1h7pum5oa776i/netbeans-plugins.tar.gz?dl=0
    descompactar-tar-gz netbeans-plugins.tar.gz
    cp -r netbeans-plugins /home/$USER/Installation/
    rm netbeans-plugins.tar.gz
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Installation/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Installation/drivers-JDBC  ja existe"
elif [ -d drivers-JDBC ];then
    cp -r drivers-JDBC /home/$USER/Installation/
    echo -e "\n\n O diretorio  drivers-JDBC  foi copiado"
else
    curl -L -o drivers-JDBC.tar.gz https://www.dropbox.com/s/h6htbjk1ryrhgmm/drivers-JDBC.tar.gz?dl=0
    descompactar-tar-gz drivers-JDBC.tar.gz
    cp -r drivers-JDBC /home/$USER/Installation/
    rm drivers-JDBC.tar.gz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Pictures/wallpaper ];then
    echo "O diretorio  /home/$USER/Pictures/wallpaper  ja existe"
elif [ -d wallpaper ];then
    cp -r wallpaper /home/$USER/Pictures/
    echo -e "\n\n O diretorio  wallpaper  foi copiado"
else
    curl -L -o wallpaper.tar.gz https://www.dropbox.com/s/6g7x59anuyo9bdy/wallpaper.tar.gz?dl=0
    descompactar-tar-gz wallpaper.tar.gz
    cp -r wallpaper /home/$USER/Pictures/
    rm wallpaper.tar.gz
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
elif [ -d WhiteSur-dark-solid ];then
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    echo -e "\n\n O diretorio  WhiteSur-dark-solid  foi copiado"
else
    curl -L -o WhiteSur-dark-solid.tar.gz https://www.dropbox.com/s/5har6w13jeb5834/WhiteSur-dark-solid.tar.gz?dl=0
    descompactar-tar-gz WhiteSur-dark-solid.tar.gz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    rm WhiteSur-dark-solid.tar.gz
fi


## Download icones Big Sur
echo -e "\n\n\n Big Sur Icons"
if [ -d /home/$USER/.icons/BigSur ];then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
elif [ -d BigSur ];then
    cp -r BigSur /home/$USER/.icons/
    echo -e "\n\n O diretorio  BigSur  foi copiado"
else
    curl -L -o BigSur.tar.gz https://www.dropbox.com/s/vzbqwtz48r5u7lx/BigSur.tar.gz?dl=0
    descompactar-tar-gz BigSur.tar.gz
    cp -r BigSur /home/$USER/.icons/
    rm BigSur.tar.gz
fi


## Download icones Big Sur Dark
echo -e "\n\n\n Big Sur Dark Icons"
if [ -d /home/$USER/.icons/BigSur-dark ];then
    echo "O diretorio  /home/$USER/.icons/BigSur-dark  ja existe"
elif [ -d BigSur-dark ];then
    cp -r BigSur-dark /home/$USER/.icons/
    echo -e "\n\n O diretorio  BigSur-dark  foi copiado"
else
    curl -L -o BigSur-dark.tar.gz https://www.dropbox.com/s/1dw2bq6h3ja2uz1/BigSur-dark.tar.gz?dl=0
    descompactar-tar-gz BigSur-dark.tar.gz
    cp -r BigSur-dark /home/$USER/.icons/
    rm BigSur-dark.tar.gz
fi


## Download MacMojave cursores
echo -e "\n\n\n MacMojave cursores"
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
elif [ -d McMojave-cursors ];then
    cp -r McMojave-cursors /home/$USER/.icons/
    echo -e "\n\n O diretorio  McMojave-cursors  foi copiado"
else
    curl -L -o McMojave-cursors.tar.gz https://www.dropbox.com/s/2pa43hb00yqt0io/McMojave-cursors.tar.gz?dl=0
    descompactar-tar-gz McMojave-cursors.tar.gz
    cp -r McMojave-cursors /home/$USER/.icons/
    rm McMojave-cursors.tar.gz
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




echo -e "\n\n\n***************************************INSTALANDO  O  DOCKER E  O  DOCKER  COMPOSE ***************************************************"

## Atualizando os repositorios
sudo apt update -y

## Instalando o Docker
sudo apt install -y docker.io

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

## Instalando Docker Compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## docker-compose --version

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install -y android-sdk-platform-tools-common

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***************************************************** INSTALANDO  O  PYTHON **********************************************************"

## Prerequisitos
sudo apt install -y build-essential checkinstall \
    libreadline-gplv2-dev  libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev


## Instalação do Python
sudo apt install -y software-properties-common
echo "deb https://ppa.launchpadcontent.net/deadsnakes/ppa/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://ppa.launchpadcontent.net/deadsnakes/ppa/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776
sudo apt update -y
sudo apt install -y python3.11


## Instalando o Pip
sudo apt install -y python3-pip

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte firecode
sudo apt install -y fonts-firacode

## Instalando Hardinfo
sudo apt install -y hardinfo

## Instalando fontes da Microsoft
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando gcc g++
sudo apt install -y gcc g++ make

## Instalando o Transmission
sudo apt install -y transmission

## Intalando Gnome tweaks tools
sudo apt install -y gnome-tweaks

## Instalando net-tools
sudo apt install -y net-tools

## Instalando libglib2.0-dev
sudo apt install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt install -y libgconf-2-4

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install -y libfuse2

## Instalando VLC
sudo apt install -y vlc

## Instalando Browser Epiphany
sudo apt install -y epiphany-browser

## Instalando Gnome extensions
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

## Instalando o gerenciador de extensões
sudo apt install -y gnome-shell-extension-manager

## Instalando Kolourpaint
sudo apt install -y kolourpaint

## Instalando o Dconf-editor
sudo apt install -y dconf-editor

## Instalando Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install spotify-client -y

## Instalando Groovy
sudo apt update -y
curl -s get.sdkman.io | bash
source "/home/$USER/.sdkman/bin/sdkman-init.sh"

## Instalando Gparted
sudo apt install -y gparted

## Instalando VirtualBox
sudo apt install -y virtualbox

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install -y meld
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************ INSTALANDO  NODE, ANGULAR CLI, TYPESCRIPT, VUE.JS, VUEL CLI E QUASAR ****************************************"

#Atualizando indices de repositorio
sudo apt update -y

## aumentando o numero de arquivos que o sistema pode monitorar
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf

## Instalando Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

## Instalando Angular CLI
sudo npm install -g  @angular/cli@15.2.2

## Instalando Typescript
sudo npm install -g typescript

## Instalando Vue.js
sudo npm install vue

## Instalando Vue CLI
sudo npm install -g @vue/cli

## Instalando o Quasar
sudo npm i -g @quasar/cli

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install -y adb
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES **************************************************************"

sudo chmod 755 /home/$USER
## mkdir -p /home/$USER/PGDATA
## chown postgres:postgres -R /home/$USER/PGDATA

sudo apt update -y
sudo apt-get install -y postgresql postgresql-contrib

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"


## Instalando PgAdmin4
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install -y pgadmin4
sudo apt install pgadmin4-desktop
## https://www.pgadmin.org/download/pgadmin-4-apt/

echo "***********************************************************************************************************************************************"









echo -e "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK***************************************************************************"

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
