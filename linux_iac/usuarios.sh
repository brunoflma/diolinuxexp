#!/bin/bash

echo "Criando diretórios... Aguarde"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários... Aguarde"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do Grupo ADM... Aguarde"

useradd carlos -c "Carlos" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 Se>
passwd carlos -e
useradd maria -c "Maria" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd maria -e

useradd joao -c "João" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd joao -e

echo "Criando usuários do Grupo VEN... Aguarde"

useradd debora -c "Debora" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd sebastiana -e

useradd roberto -c "Roberto" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd roberto -e

echo "Criando usuários do Grupo SEC... Aguarde"

useradd josefina -c "Josefina" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd josefina -e

useradd amanda -c "Amanda" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd amanda -e

useradd rogerio -c "Rogério" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd rogerio -e

echo "Adicionando permissões aos diretórios... Aguarde"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento concluído! Realizado no dia:"
date
