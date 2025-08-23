#!/bin/bash
#
# Script para parar a aplicação
#

COMPOSE_FILE="../docker-examples/docker-compose.yaml"

echo "Parando containers..."
docker-compose -f $COMPOSE_FILE down