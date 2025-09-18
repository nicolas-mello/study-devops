# 08 - Segurança (DevSecOps)

Esta pasta apresenta conceitos de **DevSecOps**, práticas de segurança integradas ao desenvolvimento e ferramentas para análise de vulnerabilidades.

---

```text
08-seguranca/
├── README.md                  # Conceitos de DevSecOps, scanners, boas práticas
├── sonar-examples/            # Exemplos de análise com SonarQube
│    └── sonar-project.properties
└── trivy-examples/            # Exemplos de varredura de vulnerabilidades com Trivy
     ├── Dockerfile
     └── scan.sh
```

---

## 🎯 O que é DevSecOps

DevSecOps é a integração de **segurança em todo o ciclo de desenvolvimento**, garantindo que práticas de proteção e análise sejam contínuas, automáticas e parte do pipeline de CI/CD.

### Benefícios
- Redução de vulnerabilidades em produção
- Feedback rápido sobre problemas de segurança
- Automatização de análises de código e containers
- Cultura de responsabilidade compartilhada entre Dev, Ops e Security

---

## 🧪 Ferramentas de análise

### SonarQube

SonarQube analisa código-fonte para **bugs, code smells e vulnerabilidades**.

#### Exemplo de projeto Java (sonar-project.properties):

```properties
sonar.projectKey=java-app
sonar.projectName=Java App Example
sonar.sources=src
sonar.java.binaries=target/classes
```

- Pode ser integrado a Jenkins, GitHub Actions, GitLab CI/CD

### Trivy

Trivy é um scanner de vulnerabilidades para imagens Docker, containers e repositórios de código.

#### Exemplo de uso em shell:

```bash
# Escanear imagem Docker
trivy image meu-app:latest

# Escanear sistema de arquivos local
trivy fs ./src
```

- Detecta vulnerabilidades conhecidas, malwares e configurações inseguras.

___

## 💡 Boas práticas de segurança

- Integrar análise de segurança no pipeline CI/CD
- Executar scans em imagens Docker antes do deploy
- Corrigir vulnerabilidades encontradas rapidamente
- Usar scanners automáticos em branches e PRs
- Monitorar dependências de terceiros regularmente

___

## 🔗 Referências

- [DevSecOps Guide](https://owasp.org/www-project-devsecops-guide/)
- [SonarQube Documentation](https://docs.sonarqube.org/)
- [Trivy Docs](https://aquasecurity.github.io/trivy/)
- [OWASP Top 10](https://owasp.org/Top10/)

