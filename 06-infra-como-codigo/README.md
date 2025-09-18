# 06 - Infra como Código (IaC)

Esta pasta apresenta conceitos e exemplos de **Infraestrutura como Código (IaC)**, prática que permite gerenciar e provisionar recursos de infraestrutura de forma **automatizada e versionada**.

---

## 📂 Estrutura da pasta

```text
06-infra-como-codigo/
├── README.md
├── terraform-examples/          # Exemplos usando Terraform
│    └── main.tf
└── ansible-examples/            # Exemplos usando Ansible
     └── playbook.yml
```

---

## 🎯 O que é IaC

Infraestrutura como Código (IaC) é a prática de gerenciar servidores, redes, bancos de dados e outros recursos de TI através de código versionado, em vez de configurações manuais.

### Benefícios

- Reprodutibilidade e consistência
- Automação de ambientes
- Facilidade em aplicar versionamento (Git)
- Menos erros humanos
- Base para práticas como DevOps e GitOps

---

## 🌍 Terraform

Terraform é uma ferramenta declarativa para provisionamento de infraestrutura em múltiplos provedores (AWS, Azure, GCP, OCI, etc).

### Comandos principais

```bash
# Inicializar projeto
terraform init

# Validar código
terraform validate

# Visualizar mudanças
terraform plan

# Aplicar mudanças
terraform apply

# Destruir recursos
terraform destroy
```

---

## 🤖 Ansible

Ansible é uma ferramenta de automação para configuração e gerenciamento de servidores.

### Comando principal

```bash
ansible-playbook -i hosts playbook.yml
```

---

## 💡 Boas práticas

- Versionar o código de infraestrutura no Git
- Revisar mudanças antes de aplicar (terraform plan, ansible --check)
- Usar variáveis e módulos para reutilização
- Evitar alterar manualmente a infraestrutura já provisionada
- Integrar IaC com pipelines de CI/CD

---

## 🔗 Referências

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
- [Ansible Docs](https://docs.ansible.com/)
- [IaC Concepts (Martin Fowler)](https://martinfowler.com/bliki/InfrastructureAsCode.html)

