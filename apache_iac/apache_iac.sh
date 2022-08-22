#!/bin/bash

echo "Atualizando o servidor... Aguarde"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos necessários... Aguarde"

cd /tmp
mkdir site
cd /site
wget https://github.com/brunoflma/diolinuxexp/raw/main/apache_iac/main.zip
unzip main.zip
cp -R * /var/www/html/

echo "Procedimento concluído no dia:"
date
