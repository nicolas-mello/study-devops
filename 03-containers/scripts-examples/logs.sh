#!/bin/bash
#
# Script para acompanhar logs da aplicação
#

COMPOSE_FILE="../docker-examples/docker-compose.yaml"

echo "Mostrando logs da aplicação (Ctrl+C para sair)..."
docker-compose -f $COMPOSE_FILE logs -f