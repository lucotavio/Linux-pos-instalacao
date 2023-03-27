#!/bin/bash


########
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

## Criando diretorio do OBS Studio
mkdir /home/$USER/Vídeos/OBS-Studio/

## Criando diretorio applications
mkdir /home/$USER/.local/share/applications/

## Criando diretorio login_ubuntu
mkdir /home/$USER/Imagens/Login/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir /home/$USER/Instalacao/Script/

## Criando diretorio Driver-JDBC dentro da pasta Instalacao
mkdir /home/$USER/Instalacao/Driver-JDBC/

##Criando diretorio Angular dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Angular-Spring

##Criando diretorio Java dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Java


## Criando diretorio jvm dentro do diretorio /usr/lib/
## que e pra onde vao ser copiados os arquivos do JDK
sudo mkdir /usr/lib/jvm/


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Templates/script.sh ]
then
    echo "O arquivo  home/$USER/Templates/script.sh  ja existe"
else
    touch /home/$USER/Templates/script.sh
    echo "#!/bin/bash" > /home/$USER/Templates/script.sh
fi


## Entrando dentro do diretorio
## onde vao ficar os programaas
## que precisao de dwonloads
## para serem istalados
cd  /home/$USER/Downloads/Programas/


## Instalando o comando curl
sudo apt-get update -y
sudo apt-get install curl -y


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt-get install -y sharutils
sudo apt-get install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress



## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.17.1-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.17.1-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload 4K Videos Downloader"
    echo -e "Tamanho do arquivo = 72 MB\n"
    fileId=1UJJC2AZzYvybz7beMhwkWf9qh9Lo_tuS
    fileName=4kvideodownloader_4.17.1-1_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi




## Download Apache Netbeans
if [ -e Apache-NetBeans-12.0-bin-linux-x64.sh ]
then
    echo "O arquivo  Apache-NetBeans-12.0-bin-linux-x64.sh  ja existe"
else
    echo -e "\n\n\n\nDownload Apache Netbeans"
    echo -e "Tamanho do arquivo = 357 MB\n"
    fileId=18Mg-_iQEsf6H8tNAD_kFu-jQNJK1Nui7
    fileName=Apache-NetBeans-12.0-bin-linux-x64.sh
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Atom"
    echo -e "Tamanho do arquivo = 131 MB\n"
    fileId=1ftai05UYi7UTV31R9ynaaFSWApYd_iFZ
    fileName=atom-amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Balena Etcher
if [ -d balena-etcher ]
then
    sudo cp -r balena-etcher /opt/
else
    echo -e "\n\n\n\nDownload Balena Etcher"
    echo -e "Tamanho do arquivo = 86 MB\n"
    fileId=1J0A0VPsTUHgkv_9RwBvupIKchiVZbE8F
    fileName=balena-etcher.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf balena-etcher.tar.gz
    sudo cp -r balena-etcher /opt/
fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ]
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Chrome"
    echo -e "Tamanho do arquivo = 77 MB\n"
    fileId=1z54xw3z_aaqKXFie-etnm7ti0Efgq8H1
    fileName=google-chrome-stable_current_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download DBeaver
if [ -e dbeaver-ce_21.1.4_amd64.deb ]
then
    echo "O arquivo  dbeaver-ce_21.1.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload DBeaver"
    echo -e "Tamanho do arquivo = 96 MB\n"
    fileId=1mnNAzsQHN5TOcVbtry_S60fQXgfYyOT
    fileName=dbeaver-ce_21.1.4_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download DBVisualizer
if [ -e dbvis_linux_12_1_1.deb ]
then
    echo "O arquivo  dbvis_linux_12_1_1.deb  ja existe"
else
    echo -e "\n\n\n\nDownload DBvisualizer"
    echo -e "Tamanho do arquivo = 154 MB\n"
    fileId=1vNBwFsj_O1sEeYFfBfLIz9kGLJEb4wIQ
    fileName=dbvis_linux_12_1_1.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## FocalGdm 3
if [ -e focalgdm3 ]
then
    echo "O arquivo  focalgdm3 ja  existe"
else
    echo -e "\n\n\n\nDownload FocalGdm 3"
    echo -e "Tamanho do arquivo = 10 KB\n"
    fileId=1acfRBp_cMEFRMXJetjbCbtXOHp6bGkUM
    fileName=focalgdm3
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Insomnia
if [ -e Insomnia.Core-2021.3.0.deb ]
then
    echo "O arquivo  Insomnia.Core-2021.3.0.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Insomnia"
    echo -e "Tamanho do arquivo = 66 MB\n"
    fileId=1Vtzn58H1-x_SiMcXXgbGMfU9fU6qqflP
    fileName=Insomnia.Core-2021.3.0.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## declarando variavel opcao
opcao=0

while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - Intellij Community"
    echo "2 - Intellij Ultimate"

    read opcao


    if [ $opcao -eq 1 ]; then
        echo -e "\n\n******************** DOWNLOAD  O  INTELLIJ COMMUNITY ********************"

        if [ -d idea-IC-211.7442.40 ]
        then
            sudo cp -r idea-IC-211.7442.40 /opt/
        else
            echo -e "\n\n\n\nDownload Intellij Community"
            echo -e "Tamanho do arquivo = 794 MB\n"
            fileId=1SKYegck6-QGzagxgeCM5qoOiUNieCxL9
            fileName=ideaIC-2021.2.tar.gz
            curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
            code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
            curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

            tar xvzf ideaIC-2021.2.tar.gz
            sudo cp -r idea-IC-211.7442.40 /opt/
        fi


        echo -e "\n\n******************** FIM  DO DOWNLOAD  DO  INTELLIJ COMMUNITY ********************"
        break
    elif [ $opcao -eq 2 ]; then
        echo -e "\n\n******************** INSTALANDO  O  INTELLIJ ULTIMATE ********************"


        if [ -d idea-IU-211.7442.40 ]
        then
            sudo cp -r idea-IU-211.7442.40 /opt/
        else
            echo -e "\n\n\n\nDownload Intellij Ultimate"
            echo -e "Tamanho do arquivo = 895 MB\n"
            fileId=1eAAbREDlqmU_tCXi4U5nh3ElJyg4r8kp
            fileName=ideaIU-2021.1.2.tar.gz
            curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
            code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
            curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

            tar xvzf ideaIU-2021.1.2.tar.gz
            sudo cp -r idea-IU-211.7442.40/ /opt/
        fi


        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   INTELLIJ ULTIMATE ********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done



## Download JDK-11.0.12
if [ -e jdk-11.0.12_linux-x64_bin.deb ]
then
    echo "O arquivo  jdk-11.0.12_linux-x64_bin.deb  ja existe"
else
    echo -e "\n\n\n\nDownload JDK-11.0.12"
    echo -e "Tamanho do arquivo = 150 MB\n"
    fileId=12YOog00Wtu62pU5lt2i4u268ywfSnAGs
    fileName=jdk-11.0.12_linux-x64_bin.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Kdenlive
if [ -d kdenlive ]
then
    sudo cp -r kdenlive /opt/
else
    echo -e "\n\n\n\nDownload Kdenlive"
    echo -e "Tamanho do arquivo = 255 MB\n"
    fileId=1oVrBPI8hM-WMCxs5AD4rRaB9HHMMDeGw
    fileName=kdenlive.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf kdenlive.tar.gz
    sudo cp -r kdenlive /opt/
fi



## Download Maven
if [ -d apache-maven-3.6.3 ]
then
  cp -r apache-maven-3.6.3 /opt/
else
    echo -e "\n\n\n\nDownload Maven"
    echo -e "Tamanho do arquivo = 9 MB\n"
    fileId=1K4xJOYwGvl9fxPp39E1v8beVWGO6MqfW
    fileName=apache-maven-3.6.3-bin.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf apache-maven-3.6.3-bin.tar.gz
    cp -r apache-maven-3.6.3 /opt/
fi




## Download OnlyOffice
if [ -e onlyoffice-desktopeditors_amd64.deb ]
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload OnlyOffice"
    echo -e "Tamanho do arquivo = 277 MB\n"
    fileId=1_oD2ue0ik--aja24NaUE5t64ADcuyisC
    fileName=onlyoffice-desktopeditors_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi




## Download Postman
if [ -d postman ]
then
    sudo cp -r postman /opt/
else
    echo -e "\n\n\n\nDownload Postman"
    echo -e "Tamanho do arquivo = 124 MB\n"
    fileId=1JaayF_vtoUAi0ZGK-uLsFUy6nV7cunKY
    fileName=postman.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf postman.tar.gz
    sudo cp -r postman /opt/
fi




## Download Scene Builder
if [ -e SceneBuilder-16.0.0.deb ]
then
    echo "O arquivo  SceneBuilder-16.0.0.deb  ja existe"
else
    echo -e "\n\n\n\nDownload SceneBuilder"
    echo -e "Tamanho do arquivo = 66 MB\n"
    fileId=1_CLAHJ_wMz8T-BHcqphIoOyTc9E-1Fwo
    fileName=SceneBuilder-16.0.0.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Spring Tools Suite
if [ -d spring-tools-suite-4-11-0 ]
then
    sudo cp -r spring-tools-suite-4-11-0 /opt/
else
    echo -e "\n\n\n\nDownload Spring Tools Suite"
    echo -e "Tamanho do arquivo = 555 MB\n"
    fileId=13TnEYMh_7C3GjuKhC8oy-rHs4cNBUNnO
    fileName=spring-tools-suite-4-11-0.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf spring-tools-suite-4-11-0.tar.gz
    sudo cp -r spring-tools-suite-4-11-0 /opt/
fi



## Download StarUML
if [ -e StarUML_4.0.1_amd64.deb ]
then
    echo "O arquivo  StarUML_4.0.1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload StarUML"
    echo -e "Tamanho do arquivo = 70 MB\n"
    fileId=1TS-bNALlQOXTrCRsacX6KnTVnOJ4v5NL
    fileName=StarUML_4.0.1_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi




## Download VirtualBox
if [ -e virtualbox-6.1_6.1.26-145957_Ubuntu_bionic_amd64.deb ]
then
    echo "O arquivo  virtualbox-6.1_6.1.26-145957_Ubuntu_bionic_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload VirtualBox"
    echo -e "Tamanho do arquivo = 86 MB\n"
    fileId=1tMgh4PLhNMQWW8ixtJweb66wm4CMndPU
    fileName=virtualbox-6.1_6.1.26-145957_Ubuntu_bionic_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi




## Download Visual Studio Code
if [ -e visual-studio-code_1.59.0-1628120042_amd64.deb ]
then
    echo "O arquivo  visual-studio-code_1.59.0-1628120042_amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Visual Studio Code"
    echo -e "Tamanho do arquivo = 75 MB\n"
    fileId=1wo42UyCgnwhd_0LPG-OtsdIH74MJfN43
    fileName=visual-studio-code_1.59.0-1628120042_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download VMware Player
if [ -e VMware-Player-16.1.1-17801498.x86_64.bundle ]
then
    echo "O arquivo VMware-Player-16.1.1-17801498.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\nDownload VMware Player"
    echo -e "Tamanho do arquivo = 167 MB\n"
    fileId=1Mz7sxJfZGz02GbgdQQE8FM799xFtvJT5
    fileName=VMware-Player-16.1.1-17801498.x86_64.bundle
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download das Waterfox
if [ -d waterfox ]
then
    sudo cp -r waterfox /opt/
else
    echo -e "\n\n\n\nDownload Waterfox"
    echo -e "Tamanho do arquivo = 82 MB\n"
    fileId=1xjO6KgMBxAotamtoMjyxqKxI5BLkPhiR
    fileName=waterfox.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf waterfox.tar.gz
    sudo cp -r waterfox /opt/
fi



## Download Imagens
if [ -d Imagens ]
then
    echo "O diretorio  Imagens  ja existe"
else
    echo -e "\n\n\n\nDownload Imagens"
    echo -e "Tamanho do arquivo = 3 MB\n"
    fileId=1ERoU6YEwfO6eEFJp5s5zXO2n8yMyuc3m
    fileName=Imagens.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf Imagens.tar.gz
fi



## Download Netbeans Plugins
if [ -d Netbeans-plugins ]
then
    echo "O diretorio  Netbeans-plugins  ja existe"
else
    echo -e "\n\n\n\nDownload Netbeans plugins"
    echo -e "Tamanho do arquivo = 8 MB\n"
    fileId=1vnVK_WkmBB_XntXmum5Ktmv24_GG_v7s
    fileName=Netbeans-plugins.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf Netbeans-plugins.tar.gz
fi



## Download Drivers JDBC
if [ -d Driver-JDBC ]
then
    echo "O diretorio  Driver-JDBC  ja existe"
else
    echo -e "\n\n\n\nDownload Driver JDBC"
    echo -e "Tamanho do arquivo = 5 MB\n"
    fileId=1MJJx6onqd4hYNX-akN-4K-x7JTqMf7XH
    fileName=Driver-JDBC.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf Driver-JDBC.tar.gz
fi



## Download tema Neon Ultra Icons
if [ -d Neon-Ultra ]
then
    cp -r Neon-Ultra /home/$USER/.icons/
else
    echo -e "\n\n\n\nDownload Neon Ultra Icon"
    echo -e "Tamanho do arquivo = 36 MB\n"
    fileId=1kfxzBeWkmIx27LrfSZa5gq4ssQjxGwmQ
    fileName=Neon-Ultra.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf Neon-Ultra.tar.gz
    cp -r Neon-Ultra /home/$USER/.icons/
fi



## Download icones Kripton theme
if [ -d Kripton ]
then
    cp -r Kripton /home/$USER/.themes/
else
    echo -e "\n\n\n\nDownload Kripton Theme"
    echo -e "Tamanho do arquivo = 483 kB\n"
    fileId=1q8VkQ1F4XFdVBX5EaVFrYgzaIV6uyQI_
    fileName=Kripton.tar.gz
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    tar xvzf Kripton.tar.gz
    cp -r Kripton /home/$USER/.themes/
fi



##Instalando fonte firecode
sudo apt-get update -y
sudo apt install fonts-firacode


## Instalar software de terceiros
sudo apt-get install ubuntu-restricted-extras


## Instalando fontes da Microsoft
echo -e "\n\n\n\n"
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v




echo "************************************************** INSTALACAO DO JDK-11 ************************************************"

## JDK tem que estar instalado para
## que a instalacao do Jenkins ocorra
## com sucesso
sudo dpkg -i jdk-11.0.12_linux-x64_bin.deb
sudo apt --fix-broken install -y
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11.0.12/bin/java 2
sudo update-alternatives --config java
echo "export JAVA_HOME=/usr/lib/jvm/jdk-11.0.12" >> /home/$USER/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
cd /home/$USER/
source .bashrc
cd /home/$USER/Downloads/Programas/

echo "************************************************** FIM DA INSTALACAO DO JDK-11 ************************************************"



#Atualizando indices de repositorio
sudo apt-get update -y


## Instalando Handbrake
echo "deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 43D3A9F60C58A7169778E6FB8771ADB0816950D8
sudo apt-get update
sudo apt-get install -y handbrake-gtk
sudo apt-get install -y handbrake-cli


## Instalando Obs Studio
sudo apt install ffmpeg
echo "deb http://ppa.launchpad.net/obsproject/obs-studio/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/obsproject/obs-studio/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BC7345F522079769F5BBE987EFC71127F425E228
sudo apt-get update
sudo apt install -y obs-studio


## Instalando gimp
echo "deb http://ppa.launchpad.net/otto-kesselgulasch/gimp/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/otto-kesselgulasch/gimp/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FB97E9C3A97F85C095AEA7903BDAAC08614C4B38
sudo apt-get update
sudo apt-get install -y gimp gimp-gmic gmic
sudo apt-get install -y gimp-plugin-registry


## Instalando Pinta
echo "deb http://ppa.launchpad.net/pinta-maintainers/pinta-stable/ubuntu bionic main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/pinta-maintainers/pinta-stable/ubuntu bionic main " | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.lis
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 45EAD2AF3C2BB95F11E609A1BC3E0682A5A1D6B2
sudo apt-get update -y
sudo apt-get install -y pinta


## INSTALANDO SUBLIME TEXT
if [ -e chave-sublime.txt ]
then
    rm chave-sublime.txt
fi

## Importando a chave de assinatrua do repositorio
curl https://download.sublimetext.com/sublimehq-pub.gpg --output chave-sublime.txt

## Adicionando a chave de repositorio
cat chave-sublime.txt | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install -y sublime-text


## Instalando Node.js
sudo apt-get install gcc g++ make
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g @angular/cli
sudo npm install -g typescript

## aumentando o numero de arquivos que o sistema pode monitorar
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf


sudo apt-get install gcc g++ make
## INSTALANDO O JENKINS
if [ -e chave-jenkins.txt ]
then
    rm chave-jenkins.txt
fi

## Importando a chave de assinatrua do repositorio
curl https://pkg.jenkins.io/debian/jenkins.io.key --output chave-jenkins.txt

## Adicionando a chave de repositorio
cat chave-jenkins.txt | sudo apt-key add -

echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install -y jenkins
sudo sed -i 's/8080/9596/g' /etc/default/jenkins
sudo systemctl stop jenkins
sudo systemctl start jenkins
sudo /lib/systemd/systemd-sysv-install enable jenkins


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
apt list --installed | grep git/bionic-updates > procurando-git.txt
if grep -q git/bionic-updates procurando-git.txt; then
    echo "********* COMANDO  GIT  ENCONTRADO *************"
else
    sudo apt-get install -y git
fi


## Instalando Alacarte
sudo apt-get install -y alacarte

## Instalando Docker
sudo apt-get install -y docker.io

## Instalando net-tools
sudo apt-get install -y net-tools

## Instalando libglib2.0-dev
sudo apt-get install -y libglib2.0-dev

## Instalando Brasero
sudo apt-get install -y brasero

## Instalando VLC
sudo apt-get install -y vlc


## Transformando arquivos de .deb em arquivos executaveis
chmod +x *.deb


sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i 4kvideodownloader_4.14.3-1_amd64.deb
sudo apt --fix-broken install -y

sudo apt-get update
sudo apt-get install libgconf-2-4

sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i dbeaver-ce_7.3.5_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i dbvis_linux_12_0_3.deb
sudo apt --fix-broken install -y

sudo dpkg -i edrawmax-10-5-3-en.deb
sudo apt --fix-broken install -y

sudo dpkg -i Insomnia.Core-2021.3.0.deb
sudo apt --fix-broken install -y

sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i SceneBuilder-15.0.1.deb
sudo apt --fix-broken install -y

sudo dpkg -i StarUML_4.0.1_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i virtualbox-6.1_6.1.22-144080_Ubuntu_bionic_amd64.deb
sudo apt --fix-broken install -y

sudo dpkg -i visual-studio-code_1.53.2-1613044664_amd64.deb
sudo apt --fix-broken install -y


## Transformando arquivos .sh em arquivos executaveis
chmod +x *.sh

## Instalando o Apache netbeans
sudo ./Apache-NetBeans-12.4-bin-linux-x64.sh
echo "StartupWMClass=Apache NetBeans IDE 12.4" | sudo tee -a /usr/share/applications/Apache\ NetBeans-12.4.desktop
sudo sed -i 's/netbeans.png/netbeans.icns/g' /usr/share/applications/Apache\ NetBeans-12.4.desktop


## Transformando arquivos de .bundle em arquivos executaveis
chmod +x *.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt-get install -y build-essential
sudo apt-get install -y manpages-dev

## Instalando VMware
sudo ./VMware-Player-16.1.1-17801498.x86_64.bundle

## Resolvendo no VMware Player o problema de: No 3d support is available from the host, on all VMware guests
if [ grep -q 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences ]; then
    echo 'Texto  mks.gl.allowBlacklistedDrivers = "TRUE"  encontrado'
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi



## Instalando ADB
sudo apt-get update -y
sudo apt-get install -y adb
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm




echo -e "\n\n******************** INSTALANDO  O  MAVEN ********************"


echo "MAVEN_HOME=/opt/apache-maven-3.6.3" >> /home/$USER/.bashrc
echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO MAVEN ********************"





echo -e "\n\n******************** INSTALANDO  O  BALENA ETCHER********************"


## Preenchendo arquivo Balena-Etcher.desktop
echo "[Desktop Entry]" | sudo tee /usr/share/applications/Balena-Etcher.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Name=Balena Etcher" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Exec=/opt/balena-etcher-1.5.116-x64.AppImage" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Icon=/opt/balena-etcher/balena-etcher-icon.png" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop
echo "Name[pt_BR]=Balena Etcher" | sudo tee -a /usr/share/applications/Balena-Etcher.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO BALENA ETCHER ********************"




echo -e "\n\n******************** INSTALANDO  O  KDENLIVE ********************"


## Dwonload Kdenlive

sudo mkdir /opt/kdenlive/

chmod +x kdenlive-20.12.3a-x86_64.appimage

sudo cp kdenlive-20.12.3a-x86_64.appimage /opt/kdenlive/

sudo cp kdenlive-icon.png /opt/kdenlive/

echo "[Desktop Entry]" | sudo tee /usr/share/applications/Kdenlive.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Name=Kdenlive" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Exec=/opt/kdenlive/kdenlive-20.12.3a-x86_64.appimage" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Icon=/opt/kdenlive/kdenlive-icon.png" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "Name[pt_BR]=Kdenlive" | sudo tee -a /usr/share/applications/Kdenlive.desktop
echo "StartupWMClass=kdenlive" | sudo tee -a /usr/share/applications/Kdenlive.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  KDENLIVE ********************"





echo -e "\n\n******************** INSTALANDO  O  SPRING  TOOLS  SUITE ********************"


echo "[Desktop Entry]" | sudo tee /usr/share/applications/spring-tools-suite.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Name=Spring Tools Suite" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Exec=/opt/spring-tools-suite-4-11-0/SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Icon=/opt/spring-tools-suite-4-11-0/icon.xpm" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "StartupWMClass=SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  SPRING  TOOLS  SUITE  ********************"





echo -e "\n\n******************** INSTALANDO  O  WATERFOX ********************"


if [ -d "/home/$USER/Downloads/Programas/waterfox/" ]
then
    echo "O diretorio waterfox ja existe"
else
    tar xvzf waterfox.tar.gz
fi

sudo cp -r waterfox /opt/

echo "[Desktop Entry]" | sudo tee /usr/share/applications/Waterfox.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Name=Waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Exec=/opt/waterfox/waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Icon=/opt/waterfox/browser/chrome/icons/default/default128.png" | sudo tee -a /usr/share/applications/Waterfox.desktop
echo "Name[pt_BR]=Waterfox" | sudo tee -a /usr/share/applications/Waterfox.desktopp


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  WATERFOX ********************"



echo -e "\n\n******************** INSTALANDO  O  POSTMAN ********************"


echo "[Desktop Entry]" | sudo tee /usr/share/applications/postman.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/postman.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/postman.desktop
echo "Name=Postman" | sudo tee -a /usr/share/applications/postman.desktop
echo "Exec=/opt/postman/Postman" | sudo tee -a /usr/share/applications/postman.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/postman.desktop
echo "Icon=/opt/postman/postman-icon.png" | sudo tee -a /usr/share/applications/postman.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  POSTMAN ********************"



if [ $opcao -eq 1 ]; then
    echo -e "\n\n******************** INSTALANDO  O  INTELLIJ COMMUNITY ********************"


    echo "[Desktop Entry]" | sudo tee /usr/share/applications/intellij-ultimate.desktop
    echo "Comment=" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Terminal=false" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Name=Intellij Community" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Exec=/opt/idea-IC-211.7442.40/bin/idea.sh" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Type=Application" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Icon=/opt/idea-IC-211.7442.40/bin/idea.svg" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "StartupWMClass=jetbrains-idea" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop


    echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  INTELLIJ COMMUNITY ********************"

elif [ $opcao -eq 2 ]; then

    echo -e "\n\n******************** INSTALANDO  O  INTELLIJ ULTIMATE ********************"


    echo "[Desktop Entry]" | sudo tee /usr/share/applications/intellij-ultimate.desktop
    echo "Comment=" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Terminal=false" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Name=Intellij Ultimate" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Exec=/opt/idea-IU-211.7442.40/bin/idea.sh" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Type=Application" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "Icon=/opt/idea-IU-211.7442.40/bin/idea.svg" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop
    echo "StartupWMClass=jetbrains-idea" | sudo tee -a /usr/share/applications/intellij-ultimate.desktop


    echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   INTELLIJ ULTIMATE ********************"

else
    echo -e "\n\nOpcao invalida"
fi




## Selecionando o JDK
sudo update-alternatives --config java


## INSTALANDO PACOTES SNAP
##sudo snap install onlyoffice-desktopeditors
sudo snap install umbrello
sudo snap install video-downloader


## INSTALANDO POSTGRES

if [ -e chave-postgres.txt ]
then
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



## INSTALANDO FIREBIRD
echo "deb http://ppa.launchpad.net/mapopa/firebird3.0/ubuntu bionic main " | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/mapopa/firebird3.0/ubuntu bionic main " | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EA316A2F8D6BD55554C23F680BE6D09EEF648708
sudo apt-get update
sudo apt-get install -y firebird3.0-server


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ]; then
        sudo apt-get install software-properties-common dirmngr apt-transport-https
        sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
        sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.ufro.cl/mariadb/repo/10.5/ubuntu bionic main'
        sudo apt update
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
    elif [ $opcao -eq 2 ]; then
        echo -e "\n\n******************** INSTALANDO  O  MYSQL ********************"

        echo -e "\n\n\Mysql - 36 KB"
        if [ -e mysql-apt-config_0.8.17-1_all.deb ]
        then
            echo "O arquivo mysql-apt-config_0.8.17-1_all.deb ja existe"
        else
            curl -L -o mysql-apt-config_0.8.17-1_all.deb https://www.dropbox.com/s/132jlnaupgovn1e/mysql-apt-config_0.8.17-1_all.deb?dl=0
        fi


        sudo dpkg -i mysql-apt-config_0.8.17-1_all.deb
        sudo apt --fix-broken install -y
        sudo apt-get update
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
