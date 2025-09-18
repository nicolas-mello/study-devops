#!/bin/bash
# Script simples para escanear vulnerabilidades da aplicação ou container

# Escanear imagem Docker
echo "Escaneando imagem Docker..."
trivy image meu-app:latest

# Escanear sistema de arquivos local (diretório da aplicação)
echo "Escaneando código-fonte local..."
trivy fs ./java-app
