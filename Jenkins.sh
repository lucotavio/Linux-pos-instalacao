#!/bin/bash

## INSTALANDO O JENKINS

## Importando a chave de assinatrua do repositorio
curl https://pkg.jenkins.io/debian/jenkins.io.key --output chave-jenkins.txt

## Adicionando a chave de repositorio
cat chave-jenkins.txt | sudo apt-key add -


echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update -y
sudo apt-get install -y jenkins
sudo sed -i 's/8080/9596/g' /etc/default/jenkins
sudo systemctl stop jenkins
sudo systemctl start jenkins
sudo /lib/systemd/systemd-sysv-install enable jenkins
rm chave-jenkins.txt
