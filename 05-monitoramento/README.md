# 05 - Monitoramento e Observabilidade

Esta pasta apresenta conceitos fundamentais de **monitoramento e observabilidade**, destacando logs, métricas e traces, além de ferramentas como Prometheus, Grafana e Loki.  

---

## 📂 Estrutura da pasta

```text
05-monitoramento/
├── README.md
└── prometheus-grafana/         # Exemplo simples com Prometheus e Grafana
     ├── docker-compose.yml
     └── README.md
```

---

## 🎯 O que é monitoramento

Monitoramento é o processo de coletar, analisar e visualizar informações sobre sistemas, aplicações e infraestrutura, permitindo identificar problemas e garantir disponibilidade.

### Conceitos principais

- **Logs** → registros textuais de eventos (ex.: erros, acessos).
- **Métricas** → valores numéricos coletados ao longo do tempo (ex.: uso de CPU, requisições/segundo).
- **Traces** → rastreamento distribuído de requisições entre microsserviços.

---

## 📊 Observabilidade

A observabilidade vai além do monitoramento tradicional.
Ela busca responder “por que algo aconteceu”, combinando métricas, logs e traces.

### Benefícios:

- Detecção proativa de falhas
- Análise de desempenho em tempo real
- Apoio a decisões de escalabilidade
- Feedback contínuo em pipelines CI/CD e práticas GitOps

---

## 🛠️ Ferramentas populares

- **Prometheus** → coleta e armazena métricas
- **Grafana** → dashboards e visualizações
- **Loki** → sistema de logs leve e escalável
- **Alertmanager** → envio de alertas do Prometheus
- **Jaeger / OpenTelemetry** → rastreamento distribuído

---

## ⚙️ Exemplo simples: Prometheus + Grafana

Na pasta prometheus-grafana/ há um docker-compose com Prometheus + Grafana para estudo local.

```bash
cd prometheus-grafana
docker-compose up -d
```

Prometheus → http://localhost:9090
Grafana → http://localhost:3000
(usuário: admin, senha: admin)

---

## 💡 Boas práticas

- Definir métricas relevantes para cada aplicação
- Configurar alertas proativos (ex.: uso de memória acima de 80%)
- Centralizar logs para fácil busca e correlação
- Usar dashboards padronizados para times diferentes
- Monitorar também a infraestrutura CI/CD e não apenas a aplicação

---

## 🔗 Referências

- [Prometheus Documentation](https://prometheus.io/docs/introduction/overview/)
- [Grafana Documentation](https://grafana.com/docs/)
- [Loki Documentation](https://grafana.com/docs/loki/latest/)
- [OpenTelemetry](https://opentelemetry.io/)
- [The Three Pillars of Observability](https://thenewstack.io/what-are-the-three-pillars-of-observability/)

