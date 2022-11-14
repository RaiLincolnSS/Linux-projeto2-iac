#!/bin/bash


echo "Criando diretorios..."


mkdir /publico 
mkdir /adm 
mkdir /ven
mkdir /sec 


echo "Criando grupos de usuarios..."


groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC


echo "Criando Usuarios..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd carlos -m -s /bin/bash -G GRP_ADM

useradd carlos -m -s /bin/bash -G GRP_VEN
useradd carlos -m -s /bin/bash -G GRP_VEN
useradd carlos -m -s /bin/bash -G GRP_VEN

useradd carlos -m -s /bin/bash -G GRP_SEC
useradd carlos -m -s /bin/bash -G GRP_SEC
useradd carlos -m -s /bin/bash -G GRP_SEC


echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec


chmod 770 /adm 
chmod 770 /ven 
chmod 770 /sec 
chmod 777 /publico 


echo "FIM..."

