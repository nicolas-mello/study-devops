# 02 - Integração e Entrega Contínua (CI/CD)

Esta pasta apresenta os **conceitos de CI/CD**, pipelines declarativas, ferramentas de integração contínua e exemplos práticos de automação de builds e deploys.

---

## 🎯 O que é CI/CD

**CI (Continuous Integration)** é a prática de integrar frequentemente alterações de código em um repositório compartilhado, executando builds e testes automaticamente.

**CD (Continuous Delivery / Continuous Deployment)** é a prática de entregar software de forma automatizada para ambientes de teste ou produção, garantindo qualidade e rapidez na entrega.

### Benefícios do CI/CD
- Redução de erros em produção  
- Feedback rápido para desenvolvedores  
- Automatização de testes e builds  
- Entrega contínua e confiável de software  

---

## ⚙️ Jenkins e Pipelines Declarativas

**Jenkins** é uma das ferramentas mais populares para automação de CI/CD.  

- **Pipeline Declarativa**: sintaxe moderna e estruturada, ideal para definir o fluxo de build/test/deploy de forma legível e padronizada.  
- **Jenkinsfile**: arquivo de configuração do pipeline, versionado junto ao código.  

### Exemplo básico de pipeline declarativa:

```groovy

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Construindo o projeto...'
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Executando testes...'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Fazendo deploy...'
                sh './deploy.sh'
            }
        }
    }
    post {
        success {
            echo 'Pipeline finalizado com sucesso!'
        }
        failure {
            echo 'Pipeline falhou!'
        }
    }
}
```

---

## 🐳 Integração com Docker

CI/CD moderno geralmente integra containers para builds isolados e consistentes.

Exemplo de build Docker dentro do pipeline:

```groovy

stage('Build Docker') {
    steps {
        script {
            docker.build('meu-app:latest')
        }
    }
}
```

---

## 🧩 Funções Compartilhadas (Shared Libraries)

Para evitar duplicação e deixar pipelines mais enxutas, é comum usar **funções compartilhadas** no Jenkins, conhecidas como **Shared Libraries**.  
Essas bibliotecas contêm funções genéricas que podem ser reutilizadas em múltiplos projetos.

### Conceito
- Centraliza código de pipeline repetitivo  
- Facilita manutenção e padronização  
- Permite criar pipelines pequenas e legíveis

### Exemplo de uso

```groovy

@Library('meu-shared-library') _
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Usando função compartilhada para build...'
                buildProject('meu-app')
            }
        }
    }
}

```

- `@Library('meu-shared-library') _` → importa a biblioteca compartilhada
- `buildProject('meu-app')` → função definida na biblioteca

### Observações

- A biblioteca deve estar configurada no Jenkins (Manage Jenkins → Global Pipeline Libraries)
- Deve existir um repositório Git com as funções compartilhadas
- Reduz repetição, mantém pipelines pequenas e consistentes
- Facilita aplicar boas práticas de CI/CD em múltiplos projetos

---

## 🌱 GitOps

**GitOps** é uma prática que utiliza **Git como fonte de verdade** para infraestrutura e deploys automáticos, integrando CI/CD e Kubernetes/Helm.

### Benefícios
- Automatiza deploys a partir de merges/commits
- Mantém o cluster sincronizado com o repositório
- Facilita rollback e auditoria
- Permite padronizar deploys em múltiplos ambientes

### Ferramentas populares
- ArgoCD
- Flux
- version-notify (para notificação de versões e updates)

### Exemplo de fluxo GitOps
1. Desenvolvedor cria feature branch e faz merge no main
2. Pipeline CI/CD builda artefato e atualiza imagem Docker
3. GitOps detecta mudança no repositório (manifest ou Helm chart)
4. Cluster Kubernetes é automaticamente atualizado
5. Notificações sobre deploy e versão são enviadas (ex: version-notify)

---

## 💡 Boas práticas de CI/CD

- Versionar sempre o Jenkinsfile ou pipeline de CI/CD junto ao código
- Manter pipelines curtos e modulares
- Executar testes automatizados antes do deploy
- Usar containers para ambientes consistentes
- Notificar equipe em caso de falha ou sucesso do pipeline

---

## 🔗 Referências

- [Jenkins Documentation](https://www.jenkins.io/doc/)  
- [Jenkins Pipeline](https://www.jenkins.io/doc/book/pipeline/)  
- [CI/CD Concepts](https://martinfowler.com/articles/continuousIntegration.html)  
- [Docker Docs](https://docs.docker.com/)
