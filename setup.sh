#!/bin/bash

# Definição do log
LOGFILE="/var/log/user-data.log"
exec > >(tee -a "$LOGFILE") 2>&1

echo "### Instalando Git..."
sudo yum install -y git


echo "### Clonando site do GitHub..."
sudo git clone https://github.com/amonryan/ativiadeaws.git /var/www/html/


echo "### Iniciando setup do servidor..."  
sudo yum -y install httpd

echo "### Iniciando Apache..."
sudo systemctl enable httpd
sudo systemctl start httpd


echo "### Enviando requisição POST..."
sudo curl -X POST -d "nome=Ryan Emmanuel" https://difusaotech.com.br/lab/aws/index.php

echo "### Script finalizado!"
