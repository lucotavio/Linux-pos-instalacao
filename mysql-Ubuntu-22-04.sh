#!/bin/bash
echo "Digite a senha atual: "
read senhaAtual

echo "Digite a senha nova: "
read senhaNova
sudo mysql -u root "-p${senhaAtual}" -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by '${senhaNova}';"
