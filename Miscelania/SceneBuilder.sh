#!/bin/bash


## Download Scene Builder
echo -e "\n\n\n Scene Builder - 66 MB"
if [ -e SceneBuilder-15.0.1.deb ];then
    echo "O arquivo  SceneBuilder-15.0.1.deb  ja existe"
else
    curl -L -o SceneBuilder-15.0.1.deb https://www.dropbox.com/s/l5wcpsdlydtobax/SceneBuilder-15.0.1.deb?dl=0
fi

sudo dpkg -i SceneBuilder-15.0.1.deb
sudo apt --fix-broken install -y
echo "******"
