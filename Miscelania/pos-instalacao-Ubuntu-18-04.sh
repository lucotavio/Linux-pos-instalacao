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

## Criando diretorio jvm dentro do diretorio /usr/lib/
## que e pra onde vao ser copiados os arquivos do JDK
sudo mkdir /usr/lib/jvm/


## Instalando o comando curl
sudo apt-get install -y curl


## Instalar software de terceiros
sudo apt-get install ubuntu-restricted-extras


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  /home/$USER/Modelos/shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/script-DB.sql ];then
    echo "O arquivo  /home/$USER/Modelos/script-DB.sql  ja existe"
else
    touch /home/$USER/Modelos/script-DB.sql
fi


## Criando modelo de arquivo de texto
if [ -e /home/$USER/Modelos/texto.txt ];then
    echo "O arquivo  /home/$USER/Modelos/texto.txt  ja existe"
else
    touch /home/$USER/Modelos/texto.txt
fi


## Entrando dentro do diretorio
## onde vao ficar os programaas
## que precisao de dwonloads
## para serem istalados
cd  /home/$USER/Downloads/Programas/


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt-get update -y
sudo apt-get install -y sharutils
sudo apt-get install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress



## Download 4K Video Downloader
echo -e "\n\n\n 4K Video Downloader - 71 MB"
if [ -e 4kvideodownloader_4.17.1-1_amd64.deb ];then
    echo "O arquivo 4kvideodownloader_4.14.3-1_amd64.deb ja existe"
else
    curl -L -o 4kvideodownloader_4.17.1-1_amd64.deb https://www.dropbox.com/s/28b7a3x3h3cmv19/4kvideodownloader_4.17.1-1_amd64.deb?dl=0
fi


## Download Apache Netbeans
echo -e "\n\n Apache Netbeans"
if [ -e Apache-NetBeans-13-bin-linux-x64.sh ];then
    echo "O arquivo Apache-NetBeans-13-bin-linux-x64.sh ja existe"
else
    curl -L -o Apache-NetBeans-13-bin-linux-x64.sh https://www.dropbox.com/s/hb08o8fe0reok1s/Apache-NetBeans-13-bin-linux-x64.sh?dl=0
fi


## Download Atom
echo -e "\n\n\n Atom - 120 MB"
if [ -e atom-amd64.deb ];then
    echo "O arquivo atom-amd64.deb ja existe"
else
    curl -L -o atom-amd64.deb https://www.dropbox.com/s/3e9vp9rka420n2x/atom-amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher - 86 MB"
if [ -d balena-etcher ];then
    sudo cp -r balena-etcher /opt/
else
    curl -L -o balena-etcher.tar.xz https://www.dropbox.com/s/aowb22tuha4y7qu/balena-etcher.tar.xz?dl=0

    tar xvf balena-etcher.tar.xz
    sudo cp -r balena-etcher /opt/
fi


## Download Chrome
echo -e "\n\n\n Chrome - 69 MB"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/lcjlsk462f5c120/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download DBVisualizer
echo -e "\n\n\n DBVisualizer - 147 MB"
if [ -e dbvis_linux_12_0_3.deb ];then
    echo "O arquivo  dbvis_linux_12_0_3.deb  ja existe"
else
    curl -L -o dbvis_linux_12_0_3.deb https://www.dropbox.com/s/lhj41d14new5s8i/dbvis_linux_12_0_3.deb?dl=0
fi


## Download JDK-17.0.2
echo -e "\n\n\n JDK-17 - 149 MB"
if [ -e jdk-17.0.2_linux-x64_bin.deb ];then
    echo "O arquivo jdk-17.0.2_linux-x64_bin.deb ja existe"
else
    curl -L -o jdk-17.0.2_linux-x64_bin.deb https://www.dropbox.com/s/7xs35m0zxuj8gll/jdk-17.0.2_linux-x64_bin.deb?dl=0
fi


# Download Lombok
echo -e "\n\n\n JDK-17 - 2 MB"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/i727xec0hmpswvz/lombok.jar?dl=0
fi


## Download Maven
echo -e "\n\n\n Maven - 9 MB"
if [ -d apache-maven-3.6.3 ];then
    sudo cp -r apache-maven-3.6.3
else
    curl -L -o apache-maven-3.6.3-bin.tar.gz https://www.dropbox.com/s/k6zjl3t6ebhrycw/apache-maven-3.6.3-bin.tar.gz?dl=0

    tar xvzf apache-maven-3.6.3-bin.tar.gz
    sudo cp -r apache-maven-3.6.3 /opt/
fi


## Download Microsoft Teams
echo -e "\n\n\n Microsoft Teams - 85 MB"
if [ -e teams_1.4.00.26453_amd64.deb ];then
    echo "O arquivo teams_1.4.00.26453_amd64.deb ja existe"
else
    curl -L -o teams_1.4.00.26453_amd64.deb https://www.dropbox.com/s/rjmbux5sagjb0ya/teams_1.4.00.26453_amd64.deb?dl=0

fi


## Download OnlyOffice
echo -e "\n\n\n OnlyOffice - 290 MB"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/wczyw32sq6o2iiw/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Spring Tools Suite
echo -e "\n\n\n Spring Tool Suite - 555 MB"
if [ -d spring-tools-suite-4-13-1 ];then
    sudo cp -r spring-tools-suite-4-13-1 /opt/
else
    curl -L -o spring-tools-suite-4-13-1.tar.xz? https://www.dropbox.com/s/97bn6v8655ofwr0/spring-tools-suite-4-13-1.tar.xz?dl=0
    tar xvf spring-tools-suite-4-11-0.tar.gz
    sudo cp -r spring-tools-suite-4-13-1 /opt/
fi


## Download StarUML
echo -e "\n\n\n StarUML - 70 MB"
if [ -e StarUML_4.0.1_amd64.deb ];then
    echo "O arquivo StarUML_4.0.1_amd64.deb ja existe"
else
    curl -L -o StarUML_4.0.1_amd64.deb https://www.dropbox.com/s/rfmrqyeoywwfi02/StarUML_4.0.1_amd64.deb?dl=0
fi


## Download VirtualBox
echo -e "\n\n\n VirtualBox - 88 MB"
if [ -e virtualbox-6.1_6.1.30-148432~Ubuntu~bionic_amd64.deb ];then
    echo "O arquivo  virtualbox-6.1_6.1.30-148432~Ubuntu~bionic_amd64.deb  ja existe"
else
    curl -L -o virtualbox-6.1_6.1.30-148432~Ubuntu~bionic_amd64.deb https://www.dropbox.com/s/hy6dhfp22pxhzlt/virtualbox-6.1_6.1.30-148432~Ubuntu~bionic_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code - 66 MB"
if [ -e visual-studio-code_1.53.2-1613044664_amd64.deb ];then
    echo "O arquivo  visual-studio-code_1.53.2-1613044664_amd64.deb  ja existe"
else
    curl -L -o visual-studio-code_1.53.2-1613044664_amd64.deb https://www.dropbox.com/s/5gfoaix1a9it735/visual-studio-code_1.53.2-1613044664_amd64.deb?dl=0
fi


## Download VMware Player
echo -e "\n\n\n VMware Player - 167 MB"
if [ -e VMware-Player-16.1.1-17801498.x86_64.bundle ];then
    echo "O arquivo  VMware-Player-16.1.1-17801498.x86_64.bundle  ja existe"
else
    curl -L -o VMware-Player-16.1.1-17801498.x86_64.bundle https://www.dropbox.com/s/go28r2rcxxzp4cz/VMware-Player-16.1.1-17801498.x86_64.bundle?dl=0
fi


## Download Waterfox
echo -e "\n\n\n VMware Waterfox - 75 MB"
if [ -d waterfox ];then
    sudo cp -r waterfox /opt/
else
    curl -L -o waterfox.tar.gz https://www.dropbox.com/s/al781puozw7zrm6/waterfox.tar.gz?dl=0

    tar xvzf waterfox.tar.gz
    sudo cp -r waterfox /opt/
fi


## Download WildFly
echo -e "\n\n\n WildFly - 205 MB"
if [ -d  /home/$USER/Servidores/wildfly-26.0.1.Final ];then
      echo "O arquivo  /home/$USER/Servidores/wildfly-26.0.1.Final  ja existe"
else
      curl -L -o wildfly-26.0.1.Final.tar.xz https://www.dropbox.com/s/trsh3208n7vl8ay/wildfly-26.0.1.Final.tar.xz?dl=0

      tar xvf wildfly-26.0.1.Final.tar.xz
      cp -r wildfly-26.0.1.Final /home/$USER/Servidores/
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins - 9 MB"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
    echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
    curl -L -o netbeans-plugins.tar.xz https://www.dropbox.com/s/82xmgrah0fcxvip/netbeans-plugins.tar.xz?dl=0

    tar xvf netbeans-plugins.tar.xz
    cp -r netbeans-plugins /home/$USER/Instalacao/
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC - 5 MB"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
    curl -L -o drivers-JDBC.tar.xz https://www.dropbox.com/s/kuaq3wk09otr8b9/drivers-JDBC.tar.xz?dl=0

    tar xvf drivers-JDBC.tar.xz
    cp -r drivers-JDBC /home/$USER/Instalacao/
fi


## Download Wallpapers
echo -e "\n\n\n Imagens - 5 MB"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
    curl -L -o wallpaper.tar.xz https://www.dropbox.com/s/tifpo2adm5vttlk/wallpaper.tar.xz?dl=0

    tar xvf wallpaper.tar.xz
    cp -r wallpaper /home/$USER/Imagens/
fi


## Download tema Kripton
echo -e "\n\n\n Kripton - 483 KB"
if [ -e /home/luciano/.themes/Kripton ];then
    echo "O diretorio  /home/luciano/.themes/Kripton  ja existe"
else
    curl -L -o Kripton.tar.gz https://www.dropbox.com/s/g4uayzka786saly/Kripton.tar.gz?dl=0

    tar xvzf Kripton.tar.gz
    cp -r Kripton /home/$USER/.themes/
fi


## Download icones Neon Ultra Icons
echo -e "\n\n\n Neon Ultra Icons - 36 MB"
if [ -e /home/luciano/.icons/Neon-Ultra ];then
    echo "O diretorio  /home/luciano/.icons/Neon-Ultra  ja existe"
else
    curl -L -o Neon-Ultra.tar.gz https://www.dropbox.com/s/5qpwqmzzuqvk7zy/Neon-Ultra.tar.gz?dl=0

    tar xvzf Neon-Ultra.tar.gz
    cp -r Neon-Ultra /home/$USER/.icons/
fi


##Instalando fonte firecode
sudo apt-get update -y
sudo apt install fonts-firacode


## Instalando fontes da Microsoft
echo -e "\n\n\n\n"
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v




echo "************************************************** INSTALACAO DO JDK-17 ************************************************"


  sudo dpkg -i jdk-17.0.2_linux-x64_bin.deb
  sudo apt --fix-broken install -y
  sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 2
  sudo update-alternatives --config java

  if [ grep -q 'export JAVA_HOME=/usr/lib/jvm/jdk-17' /home/$USER/.bashrc ];then
      echo 'Texto "export JAVA_HOME=/usr/lib/jvm/jdk-17"  encontrado'
  else
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
  fi

  cd /home/$USER/
  source .bashrc
  cd /home/$USER/Downloads/Programas/


echo "************************************************** FIM DA INSTALACAO DO JDK-17 ************************************************"


# Instalando o Apache netbeans
chmod +x *.sh
sudo ./Apache-NetBeans-13-bin-linux-x64.sh
echo "StartupWMClass=Apache NetBeans IDE 13" | sudo tee -a /usr/share/applications/Apache\ NetBeans-13.desktop
sudo sed -i 's/netbeans.png/netbeans.icns/g' /usr/share/applications/Apache\ NetBeans-13.desktop


#Atualizando indices de repositorio
sudo apt-get update -y


## aumentando o numero de arquivos que o sistema pode monitorar
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf


## Instalando Lombok no Spring Tools Suite
chmod +x lombok.jar
sudo java -jar lombok.jar


## Instalando gcc g++
sudo apt-get install gcc g++ make

## Instalando o Transmission
sudo apt-get install -y transmission

## Intalando Gnome tweaks tools
sudo apt-get install -y gnome-tweak-tool

## Instalando Dconf editor
sudo apt-get install -y dconf-editor

## Intalando Gnome extensions
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y chrome-gnome-shell

## Instalando Gparted
sudo apt-get install -y gparted

## Instalando o Git
sudo apt-get install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"


git config --global user.name "Luciano"
git config --global user.email "luc.otavio@gmail.com"

## Instalando Alacarte
sudo apt-get install -y alacarte

## Instalando net-tools
sudo apt-get install -y net-tools

## Instalando libglib2.0-dev
sudo apt-get install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt-get install libgconf-2-4

## Instalando VLC
sudo apt-get install -y vlc

## Instalando e configurando Meld
sudo apt-get install -y meld

git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false

git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false


## Transformando arquivos de .deb em arquivos executaveis
chmod +x *.deb


sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i 4kvideodownloader_4.17.1-1_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i dbvis_linux_12_0_3.deb
sudo apt --fix-broken install -y

sudo dpkg -i Insomnia.Core-2021.3.0.deb
sudo apt --fix-broken install -y

sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i StarUML_4.0.1_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i teams_1.4.00.26453_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i virtualbox-6.1_6.1.30-148432~Ubuntu~bionic_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i visual-studio-code_1.53.2-1613044664_amd64.deb
sudo apt --fix-broken install -y


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


## Transformando arquivos de .bundle em arquivos executaveis
chmod +x *.bundle


## Dependencias do VMware
sudo apt update -y
sudo apt-get install -y build-essential
sudo apt-get install -y manpages-dev

## Instalando VMware
sudo ./VMware-Player-16.1.1-17801498.x86_64.bundle

## Resolvendo no VMware Player o problema de: No 3d support is available from the host, on all VMware guests
if [ grep -q 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences ];then
    echo 'Texto  mks.gl.allowBlacklistedDrivers = "TRUE"  encontrado'
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi



Instalando ADB
sudo apt-get update -y
sudo apt-get install -y adb
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
udo adduser $USER kvm


echo -e "\n\n******************** INSTALANDO  O  MAVEN ********************"


if [ grep -q 'export MAVEN_HOME=/opt/apache-maven-3.6.3' /home/$USER/.bashrc ];then
    echo 'Texto export MAVEN_HOME=/opt/apache-maven-3.6.3"  encontrado'
else
  echo "export MAVEN_HOME=/opt/apache-maven-3.6.3" >> /home/$USER/.bashrc
  echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  MAVEN ********************"




echo -e "\n\n******************** CRIANDO  ICONE  DO  BALENA  ETCHER ********************"


## Preenchendo arquivo balena-Etcher.desktop
echo "[Desktop Entry]" | sudo tee /usr/share/applications/balena-Etcher.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Name=Balena Etcher" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Exec=/opt/balena-etcher/balena-etcher.AppImage" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Icon=/opt/balena-etcher/balena-etcher.png" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "StartupWMClass=balena-etcher-electron" | sudo tee -a /usr/share/applications/balena-Etcher.desktop


echo -e "\n\n******************** FIM  DA  CRIAÇÃO  DO  ICONE  DO  BALENA  ETCHER ********************"





echo -e "\n\n******************** CRIANDO  ICONE  DO  SPRING  TOOLS  SUITE ********************"


echo "[Desktop Entry]" | sudo tee /usr/share/applications/spring-tools-suite.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Name=Spring Tools Suite" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Exec=/opt/spring-tools-suite-4-13-1/SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Icon=/opt/spring-tools-suite-4-13-1/icon.xpm" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "StartupWMClass=SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop


echo -e "\n\n******************** FIM  DA  CRIAÇÃO  DO  ICONE  DO  SPRING  TOOLS  SUITE  ********************"




echo -e "\n\n******************** CRIANDO  ICONE  DO  WATERFOX ********************"


echo "[Desktop Entry]" | sudo tee /usr/share/applications/Waterfox.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Name=Waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Exec=/opt/waterfox/waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Icon=/opt/waterfox/browser/chrome/icons/default/default128.png" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Name[pt_BR]=Waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktopp


echo -e "\n\n******************** FIM  DA  CRIAÇÃO  DO  ICONE  DO  WATERFOX ********************"




## Selecionando o JDK
sudo update-alternatives --config java


### INSTALANDO PACOTES SNAP
##sudo snap install onlyoffice-desktopeditors
sudo snap install umbrello
sudo snap install postman
sudo snap install kdenlive
sudo snap install dbeaver-ce
sudo snap install insomnia



## declarando variavel opcao
opcao=0

while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - Intellij Community"
    echo "2 - Intellij Ultimate"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo snap install intellij-idea-community --classic
        break
    elif [ $opcao -eq 2 ];then
      sudo snap install intellij-idea-ultimate --classic
      break
    else
        echo -e "\n\nOpcao invalida"
    fi
done


## INSTALANDO POSTGRES

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


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo apt-get install software-properties-common dirmngr apt-transport-https
        sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
        sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.ufro.cl/mariadb/repo/10.5/ubuntu bionic main'
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
            curl -L -o mysql-apt-config_0.8.22-1_all.deb https://www.dropbox.com/s/is04u0l5ipek661/mysql-apt-config_0.8.22-1_all.deb?dl=0
        fi


        sudo dpkg -i mysql-apt-config_0.8.22-1_all.deb
        sudo apt --fix-broken install -y
        sudo apt-get update -y
        sudo apt-get install mysql-server

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done


## INSTALANDO SUPORTE FLATPAK
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
