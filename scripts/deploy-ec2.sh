#!/bin/bash

# Script de Deploy - EC2 Reserved Instances
# Abstergo Industries - AWS Implementation

echo "=== Iniciando Deploy de EC2 Reserved Instances ==="

# Variáveis
INSTANCE_TYPE="t3.medium"
REGION="us-east-1"
KEY_NAME="abstergo-key"

echo "Região: $REGION"
echo "Tipo de Instância: $INSTANCE_TYPE"

# Criar security group
echo "Criando Security Group..."
aws ec2 create-security-group \
  --group-name abstergo-sg \
  --description "Security Group Abstergo Industries" \
  --region $REGION

# Autorizar SSH
echo "Configurando acesso SSH..."
aws ec2 authorize-security-group-ingress \
  --group-name abstergo-sg \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0 \
  --region $REGION

echo "=== Deploy concluído com sucesso ==="
