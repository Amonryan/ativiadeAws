#!/bin/bash

# Definição do log
LOGFILE="/var/log/user-data.log"
exec > >(tee -a "$LOGFILE") 2>&1


# Clonando repositório do site
echo "### Clonando site do GitHub..."
git clone https://github.com/amonryan/ativiadeaws.git /var/www/html/


echo "### Iniciando setup do servidor..."  
yum -y install httpd

echo "### Iniciando Apache..."
systemctl enable httpd
systemctl start httpd


echo "### Enviando requisição POST..."
curl -X POST -d "nome=Ryan Emmanuel" https://difusaotech.com.br/lab/aws/index.php

echo "### Script finalizado!"
