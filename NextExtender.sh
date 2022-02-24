#!/bin/bash

## Criando modelo de arquivo shell script
if [ -e /home/$USER/VPN/vpn.sh ];then
    echo "O arquivo  /home/$USER/VPN/vpn.sh  ja existe"
else
  touch /home/$USER/vpn.sh
  echo '#!/bin/bash' > /home/$USER/VPN/vpn.sh
  echo "netExtender -d digicade.corp -u luciano.oliveira 177.69.90.198:4433" >> /home/$USER/VPN/vpn.sh
fi


## Download NetExtender
echo -e "\n\n\n NetExtender - 6 MB"
if [ -d netExtenderClient ];then
    sudo cp -r netExtenderClient /opt/
else
    curl -L -o NetExtender.Linux-10.tgz https://www.dropbox.com/s/bf4c5596uzomojy/NetExtender.Linux-10.tgz?dl=0

    tar xvzf NetExtender.Linux-10.tgz
    sudo cp -r netExtenderClient /opt/
fi


# Instalando NetExtender
cd /opt/netExtenderClient/
chmod +x install

