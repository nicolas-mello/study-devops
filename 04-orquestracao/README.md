# 04 - Orquestração (Kubernetes e Helm)

Esta pasta apresenta conceitos fundamentais sobre **orquestração de containers** com Kubernetes, Minikube e Helm, incluindo deploys, manifests e boas práticas de estudo.

---

## 🎯 Conceitos

- **Kubernetes (K8s)**: orquestrador de containers que gerencia deploy, escalabilidade, rede e volumes.  
- **Minikube**: cluster local de Kubernetes, ideal para estudos e testes.  
- **Helm**: gerenciador de pacotes para Kubernetes, facilita deploy de aplicações complexas.  
- **Manifests**: arquivos YAML que descrevem recursos do Kubernetes (Deployment, Service, Ingress, ConfigMap, Secret).  

---

## 📂 Estrutura da pasta

```text
04-orquestracao/
├── README.md
├── minikube-examples/
│    ├── deployment.yaml
│    ├── service.yaml
│    └── ingress.yaml
├── helm-charts/
│    └── java-app/
│         ├── Chart.yaml
│         ├── values.yaml
│         └── templates/
│              ├── deployment.yaml
│              └── service.yaml
└── scripts-examples/
     ├── start-minikube.sh
     ├── deploy-app.sh
     └── delete-app.sh
```

---

## ⚙️ Minikube Examples

- **deployment.yaml**: define pods e replicas da aplicação
- **service.yaml**: expõe a aplicação internamente ou externamente
- **ingress.yaml**: regras de roteamento HTTP

### Exemplo de comando para testar:

```bash
kubectl apply -f minikube-examples/deployment.yaml
kubectl get pods
kubectl get svc
```

---

## ⚙️ Helm Charts

- Helm permite versionar e parametrizar deploys com templates.
- Use o chart java-app como estudo: alterar values.yaml muda replicas, imagem e porta.

### Exemplo de deploy com Helm:

```bash
helm install java-app ./helm-charts/java-app
helm upgrade java-app ./helm-charts/java-app
helm uninstall java-app
```

---

## 📂 Scripts de estudo

- **start-minikube.sh** → inicia cluster local
- **deploy-app.sh** → aplica manifests ou charts
- **delete-app.sh** → limpa recursos do cluster

---

## 💡 Dicas de estudo

- Sempre teste em cluster local antes de ambientes de produção
- Explore kubectl explain <recurso> para entender campos do YAML
- Combine Helm + GitOps para deploys mais organizados