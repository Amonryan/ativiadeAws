# Repositório para atividade AWS

#comandos usados no campo USER DATA na criação da vm no console da AWS ec2

# Baixando o shell script do GitHub


#!/bin/bash
wget -O /home/ec2-user/setup.sh "https://raw.githubusercontent.com/Amonryan/ativiadeAws/59e8bdc6c919d45edda95c6b9c86ce9e88d49d06/setup.sh"
chmod +x /home/ec2-user/setup.sh
/home/ec2-user/setup.sh 
