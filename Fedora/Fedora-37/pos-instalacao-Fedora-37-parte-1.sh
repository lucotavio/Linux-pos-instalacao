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

## Criando diretorio Docker-Compose
mkdir /home/$USER/Docker-Compose/

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

## Entrando na para pasta de programas
cd /home/$USER/Downloads/Programas/


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


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install -y sharutils
sudo apt install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress


## Instalando comando curl
sudo apt install -y curl



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
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    curl -L -o dbeaver-le_22.3.0_amd64.deb https://www.dropbox.com/s/mrkvm0699h06age/dbeaver-le_22.3.0_amd64.deb?dl=0
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
if [ -e dropbox-2022.12.05-1.fedora.x86_64.rpm ];then
    echo "O arquivo  dropbox-2022.12.05-1.fedora.x86_64.rpm  ja existe"
else
    curl -L -o dropbox-2022.12.05-1.fedora.x86_64.rpm https://www.dropbox.com/s/wwyzlsoh4z7mgji/dropbox-2022.12.05-1.fedora.x86_64.rpm?dl=0
fi


## Download Figma
echo -e "\n\n\n Figma"
if [ -e figma-linux_0.10.0_linux_x86_64.rpm ];then
    echo "O arquivo  figma-linux_0.10.0_linux_x86_64.rpm  ja existe"
else
    curl -L -o figma-linux_0.10.0_linux_x86_64.rpm https://www.dropbox.com/s/q4nx9nk0lqj2z6u/figma-linux_0.10.0_linux_x86_64.rpm?dl=0
fi


## Download GitKraken
echo -e "\n\n\n GitKraken"
if [ -e gitkraken-amd64.rpm ];then
    echo "O arquivo  gitkraken-amd64.rpm  ja existe"
else
    curl -L -o gitkraken-amd64.rpm https://www.dropbox.com/s/xzr7wtzc1j0mspu/gitkraken-amd64.rpm?dl=0
fi


## Download Insync
echo -e "\n\n\n Insync"
if [ -e insync-3.8.4.50481-fc37.x86_64.rpm ];then
    echo "O arquivo  insync-3.8.4.50481-fc37.x86_64.rpm ja existe"
else
    curl -L -o insync-3.8.4.50481-fc37.x86_64.rpm https://www.dropbox.com/s/djq8vrcjftchl8y/insync-3.8.4.50481-fc37.x86_64.rpm?dl=0
fi


## Download Kdenlive
echo -e "\n\n\n Kdenlive"
if [ -e kdenlive-21.12.3-1.x86_64.rpm ];then
    echo "O arquivo  kdenlive-21.12.3-1.x86_64.rpm ja existe"
else
    curl -L -o kdenlive-21.12.3-1.x86_64.rpm https://www.dropbox.com/s/kit8f0ndft3z970/kdenlive-21.12.3-1.x86_64.rpm?dl=0
fi


## Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/sozukz41qxl1tfa/lombok.jar?dl=0
fi


## Download Mysql
echo -e "\n\n\n Mysql"
if [ -e mysql80-community-release-fc37-1.noarch.rpm ];then
    echo "O mysql80-community-release-fc37-1.noarch.rpm ja existe"
else
    curl -L -o mysql80-community-release-fc37-1.noarch.rpm https://www.dropbox.com/s/b5dbgh77vrdghij/mysql80-community-release-fc37-1.noarch.rpm?dl=0
fi


## Download Netbeans
echo -e "\n\n\n Netbeans"
if [ -e apache-netbeans-16-0.noarch.rpm ];then
    echo "O arquivo  apache-netbeans-16-0.noarch.rpm  ja existe"
else
    curl -L -o apache-netbeans-16-0.noarch.rpm https://www.dropbox.com/s/ex1xhvy2lzrolum/apache-netbeans-16-0.noarch.rpm?dl=0
fi


## Download Only Office
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors.x86_64.rpm ];then
    echo "O arquivo  onlyoffice-desktopeditors.x86_64.rpm  ja existe"
else
    curl -L -o onlyoffice-desktopeditors.x86_64.rpm https://www.dropbox.com/s/84c7b5y2x83ukb0/onlyoffice-desktopeditors.x86_64.rpm?dl=0
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
if [ -e postman-10.10.8-1.x86_64.rpm ];then
    echo "O arquivo  postman-10.10.8-1.x86_64.rpm  ja existe"
else
    curl -L -o postman-10.10.8-1.x86_64.rpm https://www.dropbox.com/s/y7savb3puzzi6jt/postman-10.10.8-1.x86_64.rpm?dl=0
fi


## Download Scene Builder
echo -e "\n\n\n Scene Builder"
if [ -e SceneBuilder-19.0.0.rpm ];then
    echo "O arquivo  SceneBuilder-19.0.0.rpm  ja existe"
else
    curl -L -o SceneBuilder-19.0.0.rpm https://www.dropbox.com/s/gmzbd6aiquo14r7/SceneBuilder-19.0.0.rpm?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e spring_tool_suite-4.16.0-1.x86_64.rpm ];then
    echo "O arquivo  spring_tool_suite-4.16.0-1.x86_64.rpm  ja existe"
else
    curl -L -o spring_tool_suite-4.16.0-1.x86_64.rpm https://www.dropbox.com/s/wzerw18qdg3f51h/spring_tool_suite-4.16.0-1.x86_64.rpm?dl=0
fi


## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML-5.1.0.x86_64.rpm ];then
    echo "O arquivo  StarUML-5.1.0.x86_64.rpm  ja existe"
else
    curl -L -o StarUML-5.1.0.x86_64.rpm https://www.dropbox.com/s/nolkt1yua7fg9h3/StarUML-5.1.0.x86_64.rpm?dl=0
fi


## Download VirtualBox
echo -e "\n\n\n VirtualBox"
if [ -e VirtualBox-6.1-6.1.38_153438_fedora36-1.x86_64.rpm ];then
    echo "O arquivo  VirtualBox-6.1-6.1.38_153438_fedora36-1.x86_64.rpm  ja existe"
else
    curl -L -o VirtualBox-6.1-6.1.38_153438_fedora36-1.x86_64.rpm https://www.dropbox.com/s/x224fg0166szhf4/VirtualBox-6.1-6.1.38_153438_fedora36-1.x86_64.rpm?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code-1.75.1-1675893486.el7.x86_64.rpm ];then
    echo "O arquivo  code-1.75.1-1675893486.el7.x86_64.rpm  ja existe"
else
    curl -L -o code-1.75.1-1675893486.el7.x86_64.rpm https://www.dropbox.com/s/g14llmeynh3tufq/code-1.75.1-1675893486.el7.x86_64.rpm?dl=0
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


## WPS Office
echo -e "\n\n\n WPS Office"
if [ -e wps-office-11.1.0.11691.XA-1.x86_64.rpm ];then
    echo "O arquivo  wps-office-11.1.0.11691.XA-1.x86_64.rpm  ja existe"
else
    curl -L -o wps-office-11.1.0.11691.XA-1.x86_64.rpm https://www.dropbox.com/s/6elxtazbujlvlze/wps-office-11.1.0.11691.XA-1.x86_64.rpm?dl=0
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


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
elif [ -d netbeans-plugins ];then
    cp -r netbeans-plugins /home/$USER/Instalacao/
    echo -e "\n\n O diretorio  netbeans-plugins  foi copiado"
else
    curl -L -o netbeans-plugins.tar.gz https://www.dropbox.com/s/gc1h7pum5oa776i/netbeans-plugins.tar.gz?dl=0
    descompactar-tar-gz netbeans-plugins.tar.gz
    cp -r netbeans-plugins /home/$USER/Instalacao/
    rm netbeans-plugins.tar.gz
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
elif [ -d drivers-JDBC ];then
    cp -r drivers-JDBC /home/$USER/Instalacao/
    echo -e "\n\n O diretorio  drivers-JDBC  foi copiado"
else
    curl -L -o drivers-JDBC.tar.gz https://www.dropbox.com/s/h6htbjk1ryrhgmm/drivers-JDBC.tar.gz?dl=0
    descompactar-tar-gz drivers-JDBC.tar.gz
    cp -r drivers-JDBC /home/$USER/Instalacao/
    rm drivers-JDBC.tar.gz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
elif [ -d wallpaper ];then
    cp -r wallpaper /home/$USER/Imagens/
    echo -e "\n\n O diretorio  wallpaper  foi copiado"code-1.75.1-1675893486.el7.x86_64.rpm
else
    curl -L -o wallpaper.tar.gz https://www.dropbox.com/s/6g7x59anuyo9bdy/wallpaper.tar.gz?dl=0
    descompactar-tar-gz wallpaper.tar.gz
    cp -r wallpaper /home/$USER/Imagens/
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




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

## Download JDK-17
echo -e "\n\n\n JDK"
if [ -d android-studio ];then
    sudo cp -r android-studio /opt/
else
    curl -L -o android-studio-2022.1.1.20-linux.tar.gz https://www.dropbox.com/s/jd1f1fi6x9th4w8/android-studio-2022.1.1.20-linux.tar.gz?dl=0
    descompactar-tar-gz android-studio-2022.1.1.20-linux.tar.gz
    sudo cp -r android-studio /opt/
    rm android-studio-2022.1.1.20-linux.tar.gz
fi


echo "[Desktop Entry]" | sudo tee /usr/share/applications/android-studio.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/android-studio.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/android-studio.desktop
echo "Name=android studio" | sudo tee -a /usr/share/applications/android-studio.desktop
echo "Exec=/opt/android-studio/bin/studio.sh" | sudo tee -a /usr/share/applications/android-studio.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/android-studio.desktop
echo "Icon=/opt/android-studio/bin/studio.svg" | sudo tee -a /usr/share/applications/android-studio.desktop

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INTELLIJ  COMMUNITY **************************************************************"

if [ -d idea-IC-223.8617.56 ];then
    mv idea-IC-223.8617.56/ intellij-community/
    sudo cp -r intellij-community /opt/
else
    curl -L -o ideaIC-2022.3.2.tar.gz https://www.dropbox.com/s/5k1vubimoa11813/ideaIC-2022.3.2.tar.gz?dl=0
    descompactar-tar-gz ideaIC-2022.3.2.tar.gz
    mv idea-IC-223.8617.56/ intellij-community/
    sudo cp -r intellij-community /opt/
    rm ideaIC-2022.3.2.tar.gz
fi


echo "[Desktop Entry]" | sudo tee /usr/share/applications/intellij-community.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/intellij-community.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/intellij-community.desktop
echo "Name=intellij Community" | sudo tee -a /usr/share/applications/intellij-community.desktop
echo "Exec=/opt/intellij-community/bin/idea.sh" | sudo tee -a /usr/share/applications/intellij-community.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/intellij-community.desktop
echo "Icon=/opt/intellij-community/bin/idea.svg" | sudo tee -a /usr/share/applications/intellij-community.desktop

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Instalando gcc g++
sudo dnf install -y gcc g++ make -y

## Instalando o Transmission
sudo dnf install transmission -y

## Intalando Gnome tweaks tools
sudo apt install -y gnome-tweaks

## Instalando Gparted
sudo dnf install gparted -y

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo dnf install git -y
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo dnf install meld -y
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
dnf module install nodejs:18/common

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

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

sudo dnf install adb -y
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES **************************************************************"


## Instalando PostgreSQL
sudo dnf install https://download.postgresql.org/pub/repos/yum/reporpms/F-37-x86_64/pgdg-fedora-repo-latest.noarch.rpm -y
sudo dnf install postgresql15-server -y
sudo /usr/pgsql-15/bin/postgresql-15-setup initdb
sudo systemctl enable postgresql-15

## Mudando permissao na pasta home do usuario corrente
sudo chmod 755 /home/$USER

## Mudando o tipo de autentificacao no PostgreSQL
sudo sed -i 's/ident/password/g' /var/lib/pgsql/15/data/pg_hba.conf

## Reiniciando o PostgreSQL
sudo systemctl restart postgresql-15
sudo systemctl enable postgresql-15
## sudo systemctl status mysqld

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"

echo -e "********************************************************************************************************************************************"









echo -e "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK***************************************************************************"

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
