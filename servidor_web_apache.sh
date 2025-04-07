#!/bin/bash

echo "Iniciando script de provisionamento de um servidor web pelo Apache2"

sudo apt update -y && sudo apt upgrade -y

sudo apt install apache2 -y
sudo apt install unzip -y
sudo apt install wget -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp /tmp/linux-site-dio-main/* -r /var/www/html

echo "Fim do script" 

