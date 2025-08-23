# 01 - Git e GitHub

Esta pasta apresenta os **conceitos fundamentais de Git e GitHub**, práticas recomendadas e exercícios práticos para controle de versão.

---

## 🎯 O que é Git

Git é um **sistema de controle de versão distribuído** que permite rastrear alterações no código, colaborar com equipes e gerenciar diferentes versões de um projeto.

### Benefícios do Git
- Histórico completo de alterações  
- Controle de versões e ramificações (branches)  
- Colaboração entre múltiplos desenvolvedores  
- Possibilidade de reverter alterações com segurança  

---

## 🌐 GitHub / Bitbucket

GitHub e Bitbucket são **plataformas de hospedagem de repositórios Git**, que facilitam colaboração, revisão de código, integração contínua e gerenciamento de projetos.

- **Repositórios**: armazenam código e histórico de commits  
- **Pull Requests (PRs) / Merge Requests (MRs)**: revisões de código antes de merge  
- **Issues**: controle de tarefas, bugs e melhorias  
- **Actions (GitHub) / Pipelines (Bitbucket)**: integração e entrega contínua

---

## 🔀 Branches e Fluxos de Trabalho

- **Branch principal (`main` ou `master`)**: sempre estável, pronta para produção  
- **Branches de feature**: desenvolvimento de novas funcionalidades  
- **Branches de bugfix**: correções de bugs  
- **Branches de release**: preparação de releases

### Fluxos comuns

1. **Git Flow**  
   - Branch principal `main`  
   - Branch de desenvolvimento `develop`  
   - Feature branches → develop  
   - Release/Hotfix → main  

2. **Trunk Based Development**  
   - Branch principal `main`  
   - Pequenas branches curtas para features → merge rápido  

> O fluxo deve ser escolhido de acordo com o projeto, mas o importante é **manter o main sempre estável**.  

---

## 📝 Conventional Commits

**Conventional Commits** é uma convenção para escrever mensagens de commit de forma clara e padronizada, facilitando o histórico de alterações e versionamento semântico.

Formato:

<tipo>[escopo opcional]: <descrição curta>

### Tipos comuns:
- `feat`: nova funcionalidade  
- `fix`: correção de bug  
- `docs`: documentação  
- `style`: formatação, sem alterar código  
- `refactor`: refatoração de código  
- `test`: testes  
- `chore`: tarefas de manutenção  

**Exemplo de commits**:

```bash
git commit -m "feat(auth): adicionar login via OAuth"
git commit -m "fix(api): corrigir erro 500 ao criar usuário"
git commit -m "docs: atualizar README da pasta 01-git-github"
```

---

## ⚙️ Comandos básicos

```
# Inicializar repositório
git init

# Clonar um repositório
git clone <url>

# Ver status e alterações
git status
git diff

# Adicionar arquivos
git add <arquivo>

# Commitar alterações
git commit -m "tipo: mensagem do commit"

# Criar branch
git checkout -b minha-feature

# Alternar entre branches
git checkout main

# Merge de branch
git merge minha-feature

# Enviar para remoto
git push origin main

# Buscar alterações do remoto
git pull origin main
``` 

---

## 💡 Dicas de estudo

- Sempre crie branches pequenas e com commits claros
- Use Conventional Commits para padronizar histórico
- Faça pull requests para revisão de código
- Explore tags e releases para versionamento
- Treine com repositórios de teste antes de projetos reais

---

## 🔗 Referências

- [Pro Git Book](https://git-scm.com/book/pt-br/v2)
- [GitHub Docs](https://docs.github.com/)
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
- [Git Flow](https://www.atlassian.com/br/git/tutorials/comparing-workflows/gitflow-workflow)