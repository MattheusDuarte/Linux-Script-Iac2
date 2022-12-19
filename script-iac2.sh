#!/bin/bash

echo "instalando e atualizando diretórios..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "verificando e inicializando apache 2..."
systemctl status apache2
systemctl start apache2

echo "mudando diretórios do site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

