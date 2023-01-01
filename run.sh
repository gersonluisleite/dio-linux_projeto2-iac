#!/bin/bash

# DESAFIO DE PROJETO N°2 - Formação Linux Fundamentals
#
# Infraestrutura como Código: Script de provisionamento
# de um servidor web (apache)
#
# Criador:  Gerson Luis Leite
# Data:     01/01/2023
# Versão:   1.0

echo ""
echo "##########################"
echo "#      ATUALIZANDO       #"
echo "#        SERVIDOR        #"
echo "##########################"

apt-get update -y && apt-get upgrade -y

echo ""
echo "##########################"
echo "#       INSTALANDO       #"
echo "#        APACHE &        #"
echo "#         UNZIP          #"
echo "##########################"

apt-get install unzip apache2 -y

echo ""
echo "##########################"
echo "#       BAIXANDO &       #"
echo "#       INSTALANDO       #"
echo "#       APLICAÇÃO        #"
echo "##########################"

wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

rm -rf /var/www/html/index.html
unzip -q /tmp/main.zip -d /tmp/
mv /tmp/linux-site-dio-main/* /var/www/html/
