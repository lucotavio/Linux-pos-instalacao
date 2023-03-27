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

## Criando modelo de arquivo de Properties
if [ -e /home/$USER/Modelos/propriedades.properties ];then
    echo "O arquivo  /home/$USER/Modelos/propriedades.properties  ja existe"
else
    touch /home/$USER/Modelos/propriedades.properties
fi

## Criando modelo de arquivo de Word
if [ -e /home/$USER/Modelos/word.docx ];then
    echo "O arquivo  /home/$USER/Modelos/word.docx  ja existe"
else
  cd /home/$USER/Modelos/
  touch word.txt
  libreoffice --convert-to docx word.txt
  sleep 10
  rm word.txt
fi


## Criando modelo de arquivo de Excel
if [ -e /home/$USER/Modelos/excel.xlsx ];then
    echo "O arquivo  /home/$USER/Modelos/excel.xlsx  ja existe"
else
  cd /home/$USER/Modelos/
  touch excel.csv
  soffice --headless --convert-to xlsx:"Calc MS Excel 2007 XML" excel.csv
  sleep 10
  rm excel.csv
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
echo -e "\n\n\n 4K Video Downloader"
if [ -e 4kvideodownloader_4.20.0-1_amd64.deb ];then
    echo "O arquivo 4kvideodownloader_4.20.0-1_amd64.deb ja existe"
else
    curl -L -o 4kvideodownloader_4.20.0-1_amd64.deb https://www.dropbox.com/s/2dg2day01i8yivi/4kvideodownloader_4.20.0-1_amd64.deb?dl=0
fi


## Download Atom
echo -e "\n\n\n Atom"
if [ -e atom-amd64.deb ];then
    echo "O arquivo atom-amd64.deb ja existe"
else
    curl -L -o atom-amd64.deb https://www.dropbox.com/s/o4b4qp7qm95ycty/atom-amd64.deb?dl=0
fi


## Download Balena Etcher
echo -e "\n\n\n Balena Etcher"
if [ -e balena-etcher ];then
   sudo cp -r balena-etcher /opt/
else
    curl -L -o balena-etcher.tar.xz https://www.dropbox.com/s/fiin0eippixh859/balena-etcher.tar.xz?dl=0
    tar xvf balena-etcher.tar.xz
    sudo cp -r balena-etcher /opt/
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/q47iuv5sl814uat/google-chrome-stable_current_amd64.deb?dl=0
fi

## Download JDK-17.0.4
echo -e "\n\n\n JDK"
if [ -e jdk-17.0.4_linux-x64_bin.deb ];then
    echo "O arquivo jdk-17.0.4_linux-x64_bin.deb ja existe"
else
    curl -L -o jdk-17.0.4_linux-x64_bin.deb https://www.dropbox.com/s/ya8cdkt2ku9lzrl/jdk-17.0.4_linux-x64_bin.deb?dl=0
fi


# Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/z70um964zx5e6f7/lombok.jar?dl=0
fi


## Download Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.5 ];then
    sudo cp -r apache-maven-3.8.5 /opt/
else
    curl -L -o apache-maven-3.8.5-bin.tar.gz https://www.dropbox.com/s/u1t7pv0594zd4vv/apache-maven-3.8.5-bin.tar.gz?dl=0

    tar xvzf apache-maven-3.8.5-bin.tar.gz
    sudo cp -r apache-maven-3.8.5 /opt/
    rm -r apache-maven-3.8.5-bin.tar.gz
fi


## Download Spring Tools Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -d sts-4.16.0.RELEASE ];then
    sudo cp -r sts-4.16.0.RELEASE /opt/
else
    curl -L -o spring-tool-suite-4-4.16.0.RELEASE.tar.gz https://www.dropbox.com/s/zwpbe0qh0bdzjbx/spring-tool-suite-4-4.16.0.RELEASE.tar.gz?dl=0
    tar xvf spring-tool-suite-4-4.16.0.RELEASE.tar.gz
    sudo cp -r sts-4.16.0.RELEASE /opt/
fi


## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML_5.0.0_amd64.deb ];then
    echo "O arquivo StarUML_5.0.0_amd64.deb ja existe"
else
    curl -L -o StarUML_5.0.0_amd64.deb https://www.dropbox.com/s/b7csnvtgi85iz15/StarUML_5.0.0_amd64.deb?dl=0
fi


## Download VirtualBox
echo -e "\n\n\n VirtualBox"
if [ -e virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb ];then
    echo "O arquivo  virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb  ja existe"
else
    curl -L -o virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb https://www.dropbox.com/s/nhvlcmkcsdhgr3k/virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e visual_studio_code_1.65.2.deb ];then
    echo "O arquivo  visual_studio_code_1.65.2.debb  ja existe"
else
    curl -L -o visual_studio_code_1.65.2.deb https://www.dropbox.com/s/k9pl91drm18axcv/visual_studio_code_1.65.2.deb?dl=0
fi


## Download VMware Workstation
echo -e "\n\n\n VMware Player"
if [ -e VMware-Workstation-Full-16.2.4.bundle ];then
    echo "O arquivo  VMware-Workstation-Full-16.2.4.bundle ja existe"
else
    curl -L -o VMware-Workstation-Full-16.2.4.bundle https://www.dropbox.com/s/6fh284r2pwpdb8q/VMware-Workstation-Full-16.2.4.bundle?dl=0
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
    echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
    curl -L -o netbeans-plugins.tar.xz https://www.dropbox.com/s/82xmgrah0fcxvip/netbeans-plugins.tar.xz?dl=0

    tar xvf netbeans-plugins.tar.xz
    cp -r netbeans-plugins /home/$USER/Instalacao/
    rm -r netbeans-plugins.tar.xz
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
    curl -L -o drivers-JDBC.tar.xz https://www.dropbox.com/s/kuaq3wk09otr8b9/drivers-JDBC.tar.xz?dl=0

    tar xvf drivers-JDBC.tar.xz
    cp -r drivers-JDBC /home/$USER/Instalacao/
    rm -r drivers-JDBC.tar.xz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpepers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
    curl -L -o wallpaper.tar.xz https://www.dropbox.com/s/q24rl46efrc7rsl/wallpaper.tar.xz?dl=0

    tar xvf wallpaper.tar.xz
    cp -r wallpaper /home/$USER/Imagens/
    rm -r wallpaper.tar.xz
fi


## Download tema Kripton
echo -e "\n\n\n Kripton"
if [ -e /home/luciano/.themes/Kripton ];then
    echo "O diretorio  /home/luciano/.themes/Kripton  ja existe"
else
    curl -L -o Kripton.tar.xz https://www.dropbox.com/s/yrqfk7ys4ked03d/Kripton.tar.xz?dl=0

    tar xvf Kripton.tar.xz
    cp -r Kripton /home/$USER/.themes/
    rm -r Kripton.tar.xz
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -e /home/luciano/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/luciano/.themes/WhiteSur-dark-solid  ja existe"
else
    curl -L -o WhiteSur-dark-solid.tar.xz https://www.dropbox.com/s/fq1jpardggpkguc/WhiteSur-dark-solid.tar.xz?dl=0

    tar xvf WhiteSur-dark-solid.tar.xz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    rm -r WhiteSur-dark-solid.tar.xz
fi


## Download icones Neon Ultra Icons
echo -e "\n\n\n Neon Ultra Icons"
if [ -e /home/luciano/.icons/neon-ultra-icons ];then
    echo "O diretorio  /home/luciano/.icons/Neon-Ultra  ja existe"
else
    curl -L -o neon-ultra-icons.tar.gz https://www.dropbox.com/s/7faky06fwyre173/neon-ultra-icons.tar.gz?dl=0

    tar xvzf neon-ultra-icons.tar.gz
    cp -r neon-ultra-icons /home/$USER/.icons/
    rm -r neon-ultra-icons.tar.gz
fi


## Download icones White Sur
echo -e "\n\n\n White Sur Icons"
if [ -e /home/luciano/.icons/WhiteSur ];then
    echo "O diretorio  /home/luciano/.icons/WhiteSur  ja existe"
else
    curl -L -o WhiteSur.tar.xz https://www.dropbox.com/s/7sr5k15zwlotg4g/WhiteSur.tar.xz?dl=0

    tar xvf WhiteSur.tar.xz
    cp -r WhiteSur /home/$USER/.icons/
    rm -r WhiteSur.tar.xz
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 ************************************************"

    cd /home/$USER/Downloads/Programas/
    sudo dpkg -i jdk-17.0.4_linux-x64_bin.deb
    sudo apt --fix-broken install -y
    sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 2
    sudo update-alternatives --config java

    sed -i '/JAVA/d' /home/$USER/.bashrc

    echo "export JAVA_HOME=/usr/lib/jvm/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc

    rm -rf sed*


    cd /home/$USER/
    source .bashrc
    cd  /home/$USER/Downloads/Programas/

echo "**************************************************************************************************************************"


echo -e "\n\n\n******************** CRIANDO  ICONE  DO  SPRING  TOOLS  SUITE ********************"

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

echo "**********************************************************************************"


echo -e "\n\n******************** INSTALANDO  O  BALENA ETCHER********************"


## Preenchendo arquivo balena-Etcher.desktop
echo "[Desktop Entry]" | sudo tee /usr/share/applications/balena-Etcher.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Name=Balena Etcher" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo 'Exec=sh -c "/opt/balena-etcher/balenaEtcher.AppImage --disable-gpu-sandbox"' | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "Icon=/opt/balena-etcher/balena-etcher.png" | sudo tee -a /usr/share/applications/balena-Etcher.desktop
echo "StartupWMClass=balena-etcher-electron" | sudo tee -a /usr/share/applications/balena-Etcher.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO BALENA ETCHER ********************"






echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ************************************************"

cd /home/$USER/Downloads/Programas/
chmod +x *.deb

sudo dpkg -i 4kvideodownloader_4.20.0-1_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i StarUML_5.0.0_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i virtualbox-7.0_7.0.0-153978_Ubuntu_jammy_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i visual_studio_code_1.65.2.deb
sudo apt --fix-broken install -y

echo "**********************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT-GET ************************************************"

##Instalando fonte firecode
sudo apt-get update -y
sudo apt install fonts-firacode

## Instalando fontes da Microsoft
echo -e "\n\n\n\n"
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando gcc g++
sudo apt-get install gcc g++ make

## Instalando o Transmission
sudo apt-get install -y transmission

## Intalando Gnome tweaks tools
sudo apt-get install -y gnome-tweaks

## Instalando Dconf editor
sudo apt-get install -y dconf-editor

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

## Intalando Gnome extensions
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y chrome-gnome-shell

## Instalando Gparted
sudo apt-get install -y gparted

echo  "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT ************************************************"

## Instalando o Git
sudo apt-get install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
##git config --global credential.helper store


echo "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ************************************************"

## Instalando e configurando Meld
sudo apt-get install -y meld
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  NODE, ANGULAR CLI, TYPESCRIPT, VUE.JS, VUEL CLI E QUASAR ************************************************"

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

echo "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  VMWARE ************************************************"

cd /home/$USER/Downloads/Programas/
chmod +x *.bundle


## Dependencias do VMware
sudo apt update -y
sudo apt-get install -y build-essential
sudo apt-get install -y manpages-dev

## Instalando VMware
sudo ./VMware-Workstation-Full-16.2.4.bundle

sed -i '/mks.gl.allowBlacklistedDrivers = "TRUE"/d' /home/$USER/.vmware/preferences


## Resolvendo no VMware Player o problema de: No 3d support is available from the host, on all VMware guests
echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences


echo "***************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB ************************************************"

Instalando ADB
sudo apt-get update -y
sudo apt-get install -y adb
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm

echo "********************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES ************************************************"

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

echo "********************************************************************************************************************"




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
        sudo systemctl start mariadb222222+
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
        if [ -e mysql-apt-config_0.8.23-1_all.deb ];then
            echo "O mysql-apt-config_0.8.23-1_all.deb ja existe"
        else
            curl -L -o mysql-apt-config_0.8.23-1_all.deb https://www.dropbox.com/s/dprvgvgr9pzidvq/mysql-apt-config_0.8.23-1_all.deb?dl=0
        fi


        sudo dpkg -i mysql-apt-config_0.8.23-1_all.deb
        sudo apt --fix-broken install -y
        sudo apt-get update -y
        sudo apt-get install mysql-server

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "********************************************************************************************************************"



while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - Intellij Community"
    echo "2 - Intellij Ultimate"

    read opcao

    if [ $opcao -eq 1 ];then
        echo -e "\n\n********************INSTALANDO O  INTELLIJ COMMUNITY ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community

        echo -e "\n\n*************************************************************************"
        break
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  INTELLIJ ULTIMATE ********************"

        flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate

        echo -e "\n\n**************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "********************************************************************************************************************"




echo -e "\n\n\n******************** INSTALANDO  O  MAVEN ********************"

      sed -i '/MAVEN/d' /home/$USER/.bashrc

      echo "export MAVEN_HOME=/opt/apache-maven-3.8.5" >> /home/$USER/.bashrc
      echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc

      rm -rf sed*

    cd /home/$USER/
    source .bashrc
    cd /home/$USER/Downloads/Programas/

echo "****************************************************************************"







## Selecionando o JDK
sudo update-alternatives --config java


echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK ************************************************"

flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub io.dbeaver.DBeaverCommunity
flatpak install flathub com.getpostman.Postman
flatpak install flathub org.kde.kolourpaint
flatpak install flathub org.apache.netbeans
flatpak install flathub org.eclipse.Java
flatpak install flathub org.kde.umbrello
flatpak install flathub com.google.AndroidStudio

echo "********************************************************************************************************************"
