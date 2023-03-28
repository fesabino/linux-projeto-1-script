#!/bin/bash

echo "Criando Diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos...."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando Usuários...."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Liberando Permissões para Grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Liberando Permissões"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado...."
