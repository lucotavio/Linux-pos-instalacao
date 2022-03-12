#!/bin/bash


cd  /home/$USER/Downloads/Programas/

## Download Spring Tools Suite
echo -e "\n\n\n Spring Tool Suite - 555 MB"
if [ -d spring-tools-suite-4-13-1 ];then
    sudo cp -r spring-tools-suite-4-13-1 /opt/
else
    curl -L -o spring-tools-suite-4-13-1.tar.xz? https://www.dropbox.com/s/97bn6v8655ofwr0/spring-tools-suite-4-13-1.tar.xz?dl=0
    tar xvf spring-tools-suite-4-13-1.tar.xz
    sudo cp -r spring-tools-suite-4-13-1 /opt/
fi


echo -e "\n\n******************** INSTALANDO  O  SPRING  TOOLS  SUITE ********************"


echo "[Desktop Entry]" | sudo tee /usr/share/applications/spring-tools-suite.desktop
echo "Comment=" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Terminal=false" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Name=Spring Tools Suite" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Exec=/opt/spring-tools-suite-4-13-1/SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Type=Application" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "Icon=/opt/spring-tools-suite-4-13-1/icon.xpm" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop
echo "StartupWMClass=SpringToolSuite4" | sudo tee -a /usr/share/applications/spring-tools-suite.desktop


echo -e "\n\n******************** FIM  DA  INSTALACAO  DO  SPRING  TOOLS  SUITE  ********************"


# Download Lombok
echo -e "\n\n\n JDK-17 - 2 MB"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/i727xec0hmpswvz/lombok.jar?dl=0
fi

chmod +x lombok.jar
sudo java -jar lombok.jar
