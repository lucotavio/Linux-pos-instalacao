#!/bin/bash

## Download Insomnia
echo -e "\n\n Insommia - 69 MB"
if [ -e Insomnia.Core-2021.3.0.deb ];then
    echo "O arquivo  Insomnia.Core-2021.3.0.deb  ja existe"
else
    curl -L -o Insomnia.Core-2021.3.0.deb https://www.dropbox.com/s/ai079hr8l6c1pv2/Insomnia.Core-2021.3.0.deb?dl=0
fi

sudo dpkg -i Insomnia.Core-2021.3.0.deb
sudo apt --fix-broken install -y
