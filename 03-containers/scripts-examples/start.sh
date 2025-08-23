#!/bin/bash
#
# Script para subir a aplicação Java + DB
#

# Caminho relativo para o docker-compose.yaml
COMPOSE_FILE="../docker-examples/docker-compose.yaml"

echo "Subindo containers..."
docker-compose -f $COMPOSE_FILE up -d

echo "Containers ativos:"
docker ps