# 07 - Cloud Computing

Esta pasta apresenta conceitos fundamentais de **Cloud Computing**, principais provedores e práticas de uso em DevOps.

---

```text
07-cloud/
├── README.md                  # Conceitos de cloud computing e provedores
└── notes/                     # Anotações ou cheatsheets de provedores
```

---

## 🎯 O que é Cloud Computing

Cloud Computing é a entrega de recursos de TI (servidores, armazenamento, bancos de dados, redes, softwares) sob demanda, via internet, pagando apenas pelo que se utiliza.

### Benefícios
- Escalabilidade rápida e sob demanda
- Redução de custos com infraestrutura física
- Alta disponibilidade e tolerância a falhas
- Facilidade de integração com pipelines CI/CD
- Possibilidade de automação via IaC

---

## 🌐 Principais provedores

### AWS (Amazon Web Services)
- Serviços amplos: EC2, S3, RDS, Lambda, EKS
- Suporte a automação e IaC (Terraform, CloudFormation)

### GCP (Google Cloud Platform)
- Foco em dados e inteligência artificial
- Serviços populares: Compute Engine, Cloud Storage, BigQuery, GKE

### OCI (Oracle Cloud Infrastructure)
- Foco corporativo, bancos de dados Oracle e integração empresarial
- Serviços: Compute, Object Storage, Database, Container Engine for Kubernetes

---

## ⚙️ Boas práticas em Cloud para DevOps

- Versionar scripts de provisionamento e IaC
- Automatizar deploys usando pipelines CI/CD
- Utilizar recursos de monitoramento e logs nativos do provedor
- Gerenciar custos e alertas de consumo
- Segregar ambientes (dev, staging, prod) em contas ou projetos diferentes

---

## 🔗 Referências

- [AWS Docs](https://docs.aws.amazon.com/)
- [GCP Docs](https://cloud.google.com/docs)
- [OCI Docs](https://docs.oracle.com/en/cloud/)
- [Cloud Computing Concepts](https://azure.microsoft.com/en-us/overview/what-is-cloud-computing/)
