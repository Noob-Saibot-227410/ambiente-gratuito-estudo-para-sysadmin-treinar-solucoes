#!/bin/bash

# Realiza a verificação dos processos em execução
echo "Processos em execução:"
ps -aux

# Realiza a verificação do uso de memória
echo "Uso de memória:"
free -h

# Realiza a verificação do uso de disco
echo "Uso de disco:"
df -h

# Realiza a verificação das portas em uso
echo "Portas em uso:"
netstat -tulpn

# Realiza a verificação do uso de disco
echo "Uso de disco:"
df -h

# Realiza a verificação do uso de memória
echo "Uso de memória:"
free -h