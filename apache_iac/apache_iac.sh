#!/bin/bash

echo "Atualizando o servidor... Aguarde"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos necessários... Aguarde"

cd /tmp
wget https://github.com/brunoflma/diolinuxexp/raw/main/apache_iac/main.zip
unzip main.zip
cd main
cp -R * /var/www/html/