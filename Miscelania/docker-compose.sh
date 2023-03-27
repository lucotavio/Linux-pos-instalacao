#!/bin/bash

## Instalando o curl
sudo apt update -y
sudo apt install curl -y

## Instalando Docker Compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
## docker-compose --version
