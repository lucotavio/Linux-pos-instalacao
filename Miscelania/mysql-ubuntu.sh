#!/bin/bash


## Download Mysql
echo -e "\n\n\n Mysql"
if [ -e mysql-apt-config_0.8.24-1_all.deb ];then
    echo "O mysql-apt-config_0.8.22-1_all.deb ja existe"
else
    curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
fi


echo -e "\n\n***************************************************** INSTALANDO  O  MYSQL *************************************************************"

chmod +x mysql-apt-config_0.8.24-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt install -y mysql-server
sudo apt install -y mysql-workbench-community

echo -e "\n\n****************************************************************************************************************************************"
