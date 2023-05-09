#!/bin/bash

# Verifica a existência do diretório
if [ -d "/tmp/support" ]; then
  echo "O diretório /tmp/support já existe."
else
  echo "O diretório /tmp/support não existe. Criando..."
  mkdir /tmp/support
fi

# Cria o arquivo de log
echo "Iniciando o suporte..." > /tmp/support/log.txt

# Realiza o backup do arquivo de configuração
cp /etc/ssh/sshd_config /tmp/support/sshd_config.backup

# Envia o arquivo de log para o servidor de suporte
scp /tmp/support/log.txt suporte@servidor:/home/suporte/logs/

echo "Suporte finalizado."