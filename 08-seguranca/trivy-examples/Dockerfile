# Imagem base para realizar varredura
FROM aquasec/trivy:latest

# Diretório de trabalho
WORKDIR /scan

# Copia arquivos da aplicação (exemplo)
COPY ../java-app ./java-app

# Entrypoint padrão: abrir shell para rodar trivy manualmente
ENTRYPOINT ["/bin/sh"]
