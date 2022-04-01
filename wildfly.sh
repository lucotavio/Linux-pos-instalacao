#!/bin/bash

## Download WildFly
echo -e "\n\n\n WildFly"
if [ -d  /home/$USER/Servidores/wildfly-26.0.1.Final ];then
      echo "O arquivo  /home/$USER/Servidores/wildfly-26.0.1.Final  ja existe"
else
      curl -L -o wildfly-26.0.1.Final.tar.xz https://www.dropbox.com/s/trsh3208n7vl8ay/wildfly-26.0.1.Final.tar.xz?dl=0

      tar xvf wildfly-26.0.1.Final.tar.xz
      cp -r wildfly-26.0.1.Final /home/$USER/Servidores/
      rm -r wildfly-26.0.1.Final.tar.xz
fi
