#!/bin/bash


echo -e "\n\n\n************************************************** INSTALANDO  MYSQL **************************************************************"

sudo dnf update -y
sudo dnf install mysql-server -y
sudo systemctl start mysqld.service
sudo systemctl enable mysqld
## sudo systemctl status mysqld
sudo mysql_secure_installation

## Criando usuario luciano
sudo mysql -u root "-p789789" -e "CREATE USER 'luciano'@'localhost' IDENTIFIED BY '789789';"

## Dando ao usuario luciano todas as permissoes no SGBD MariaDB
sudo mysql -u root "-p789789" -e "GRANT ALL PRIVILEGES ON *.* TO 'luciano'@'localhost' WITH GRANT OPTION;"


echo -e "\n\n\n**************************************************************************************************************************************"
