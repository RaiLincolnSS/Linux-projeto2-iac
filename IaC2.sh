#!/bin/bash



echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicacao"
cd /temp
wget https://github.com/RaiLincolnSS/Projetinhos-em-HTML-E-CSS/archive/refs/heads/main.zip
unzip main.zip
cd Projetinhos-em-HTML-E-CSS
cp -R * /var/www/html



echo "FIM..."

