#!/bin/bash


## Download Portugol studio
echo -e "\n\n\n Portugol Studio"
if [ -e portugol-studio-2.7.5-linux-x64.run ];then
    echo "O arquivo  portugol-studio-2.7.5-linux-x64.run  ja existe"
else
    curl -L -o portugol-studio-2.7.5-linux-x64.run https://www.dropbox.com/s/x9e9qgvud4y2wbt/portugol-studio-2.7.5-linux-x64.run?dl=0
fi


echo -e "\n\n\n************************************************** INSTALANDO  PORTUGOL  STUDIO ******************************************************"

chmod +x portugol-studio-2.7.5-linux-x64.run
sudo ./portugol-studio-2.7.5-linux-x64.run

echo -e "\n\n\n**************************************************************************************************************************************"
