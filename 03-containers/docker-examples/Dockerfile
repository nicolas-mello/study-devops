# Etapa 1: Build da aplicação

# Usamos uma imagem com Maven + JDK 21 para compilar o projeto
# "AS build" cria um alias para referenciar esta etapa mais tarde
FROM maven:3.9.5-eclipse-temurin-21 AS build

# Define o diretório de trabalho dentro do container
# Todos os comandos seguintes (COPY, RUN, etc) vão usar /app como base
WORKDIR /app

# Copia apenas o arquivo pom.xml para o container
# Isso permite baixar dependências antes de copiar o código fonte
COPY java-app/pom.xml .

# Baixa todas as dependências definidas no pom.xml sem compilar
# Útil para cache: se o pom.xml não mudar, essa etapa não precisa rodar de novo
RUN mvn dependency:go-offline

# Copia o código fonte para dentro do container
COPY java-app/src ./src

# Compila e empacota a aplicação em um JAR
# "-DskipTests" pula a execução de testes para agilizar o build
RUN mvn package -DskipTests

# Etapa 2: Runtime (imagem final leve)

# Usamos uma imagem menor apenas com OpenJDK para rodar o JAR
FROM openjdk:21-jdk-alpine

# Define o diretório de trabalho da aplicação dentro do container
WORKDIR /app

# Copia o JAR gerado na etapa de build para esta imagem final
# "--from=build" indica que estamos pegando do estágio "build"
COPY --from=build /app/target/java-app-1.0-SNAPSHOT.jar ./java-app.jar

# Comando que será executado quando o container iniciar
CMD ["java", "-jar", "java-app.jar"]

# Expõe a porta 8080 para acesso externo (por e
