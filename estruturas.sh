#!/bin/bash

echo "Criando estruturas de usuários no sistema..."

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos..."

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos Alberto" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -c "Maria Fumaça" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -c "João de Barro" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -c "Debora Blando" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Lima" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd josefina -c "Josefina de Jesus" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -c "Amanda Fikar" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -c "Rogério Ceni" -s /bin/bash -m -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Especificando dono do grupo..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
 
echo "Especificando permissões..."
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

echo "Finalizado!!!"


