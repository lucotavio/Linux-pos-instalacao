#!/bin/bash

## Download Spring Tools Suite
echo -e "\n\n\n Spring Tool Suite - 555 MB"
if [ -d spring-tools-suite-4-11-0 ];then
    sudo cp -r spring-tools-suite-4-11-0 /opt/
else
    curl -L -o spring-tools-suite-4-11-0.tar.gz https://www.dropbox.com/s/c3a1fjpxs6kbucb/spring-tools-suite-4-11-0.tar.gz?dl=0
    tar xvzf spring-tools-suite-4-11-0.tar.gz
    sudo cp -r spring-tools-suite-4-11-0 /opt/
fi
