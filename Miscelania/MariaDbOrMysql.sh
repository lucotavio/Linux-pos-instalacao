#!/bin/bash


echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  OU  MYSQL ****************************************************"

cd /home/$USER/Downloads/Programas/
while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - MariaDB"
    echo "2 - MySql"

    read opcao

    if [ $opcao -eq 1 ];then
        sudo apt install -y software-properties-common dirmngr apt-transport-https
        sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
        sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.ufro.cl/mariadb/repo/10.5/ubuntu 2 main'
        sudo apt update -y
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
    elif [ $opcao -eq 2 ];then
        echo -e "\n\n******************** INSTALANDO  O  MYSQL ********************"

        echo -e "\n\n\Mysql - 36 KB"
        if [ -e mysql-apt-config_0.8.22-1_all.deb ];then
            echo "O mysql-apt-config_0.8.22-1_all.deb ja existe"
        else
            curl -L -o mysql-apt-config_0.8.24-1_all.deb https://www.dropbox.com/s/frw753s7blilmul/mysql-apt-config_0.8.24-1_all.deb?dl=0
        fi

        chmod +x mysql-apt-config_0.8.24-1_all.deb
        sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb
        sudo apt --fix-broken install -y

        ## Atualizando a maneira de atualizar as keys dos repositorio sao salvas
        cd /etc/apt
        sudo cp trusted.gpg trusted.gpg.d

        sudo apt update -y
        sudo apt install -y mysql-server
        sudo apt install -y mysql-workbench-community

        echo -e "\n\n******************** FIM  DA  INSTALACAO  DO   MYSQL********************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo -e "\n\n\n*************************************FIM  DA  INSTALAÇÃO  DO MYSQL  OU  MARIADB ******************************************************"
