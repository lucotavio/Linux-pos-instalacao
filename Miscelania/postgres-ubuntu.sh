#!/bin/bash


echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES **************************************************************"

sudo chmod 755 /home/$USER
## mkdir -p /home/$USER/PGDATA
## chown postgres:postgres -R /home/$USER/PGDATA

sudo apt update -y
sudo apt-get install -y postgresql postgresql-contrib

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"


## Instalando PgAdmin4
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install -y pgadmin4
sudo apt install pgadmin4-desktop
## https://www.pgadmin.org/download/pgadmin-4-apt/

echo "***********************************************************************************************************************************************"
