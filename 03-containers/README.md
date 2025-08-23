# 03 - Containers (Docker)

Esta pasta apresenta conceitos fundamentais sobre **containers**, com foco em Docker, imagens, volumes e redes, preparando para uso em pipelines CI/CD.

---

## 📂 Estrutura da pasta

```text
03-containers/
├── README.md
├── docker-examples/            # Exemplos de Dockerfile e docker-compose
│    ├── java-app/              # Pequena aplicação Java (Maven)
│    │    ├── pom.xml
│    │    └── src/
│    │         └── main/java/App.java
│    │
│    ├── Dockerfile             # Dockerfile comentado para estudo
│    └── docker-compose.yaml    # Compose comentado para estudo
│
└── scripts-examples/           # Scripts para subir, parar e acompanhar containers
     ├── start.sh
     ├── stop.sh
     └── logs.sh
```

---

## 🎯 O que são containers

**Containers** são unidades leves e portáteis que encapsulam uma aplicação e suas dependências, garantindo que ela rode de forma consistente em qualquer ambiente.

### Benefícios
- Ambiente isolado e consistente  
- Portabilidade entre máquinas e servidores  
- Redução de conflitos entre dependências  
- Integração fácil com CI/CD  

---

## 🐳 Docker

Docker é a ferramenta mais popular para criar, gerenciar e executar containers.

### Conceitos principais

- **Imagem (Image)**: template read-only usado para criar containers  
- **Container**: instância em execução de uma imagem  
- **Dockerfile**: arquivo que define como a imagem será construída  
- **Volumes**: persistência de dados entre containers  
- **Redes (Networks)**: comunicação entre containers  

---

## ⚙️ Comandos básicos

```bash
# Listar containers
docker ps
docker ps -a

# Rodar container
docker run -d --name meu-container nginx

# Acessar container
docker exec -it meu-container /bin/bash

# Parar container
docker stop meu-container

# Remover container
docker rm meu-container

# Construir imagem
docker build -t minha-imagem:latest .

# Listar imagens
docker images

# Remover imagem
docker rmi minha-imagem:latest

# Criar volume
docker volume create meu-volume

# Rodar container com volume
docker run -d -v meu-volume:/app/data minha-imagem:latest

# Criar rede
docker network create minha-rede

# Rodar container em rede específica
docker run -d --network minha-rede minha-imagem:latest
```

---

## 💡 Boas práticas

- Usar imagens oficiais e pequenas
- Evitar rodar processos como root dentro do container
- Versionar Dockerfiles junto com o código
- Usar volumes para persistência de dados
- Usar redes para conectar múltiplos containers
- Testar containers localmente antes de integrar em CI/CD

---

## 🔗 Referências

- [Docker Documentation](https://docs.docker.com/)  
- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)  
- [Docker Compose](https://docs.docker.com/compose/)  
- [Docker Best Practices](https://docs.docker.com/develop/dev-best-practices/)
