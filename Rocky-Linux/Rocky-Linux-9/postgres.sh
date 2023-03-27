#!/bin/bash


echo -e "\n\n\n************************************************** INSTALANDO  POSTGRES **************************************************************"


## Instalando PostgreSQL
sudo yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm  -y
sudo dnf install postgresql12 postgresql12-server -y
sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
sudo systemctl enable --now postgresql-12

## Mudando permissao na pasta home do usuario corrente
sudo chmod og+X /home /home/$USER

## Mudando o tipo de autentificacao no PostgreSQL
sudo sed -i 's/ident/password/g' /var/lib/pgsql/12/data/pg_hba.conf

## Reiniciando o PostgreSQL
sudo systemctl restart postgresql-12
sudo systemctl enable postgresql-12
## sudo systemctl status mysqld

## Alterando a senha do usuario postgres no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER postgres PASSWORD '789789';"

## Criando usuario luciano no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "CREATE USER luciano WITH ENCRYPTED PASSWORD '789789';"

## Alterando permissoes do usuario luciano
## para ele se tornar um super usuario
## no SGBD PostgreSQL
sudo -u postgres -H -- psql -c "ALTER USER luciano WITH SUPERUSER"

echo -e "\n\n\n**************************************************************************************************************************************"
