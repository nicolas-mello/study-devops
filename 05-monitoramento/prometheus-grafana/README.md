# 📊 Exemplo Prometheus + Grafana

Este exemplo sobe um ambiente simples de **monitoramento** com **Prometheus** e **Grafana** usando Docker Compose.

---

## 🚀 Como rodar

Na raiz da pasta:

```bash
docker-compose up -d
```

---

## 🔎 Acessos

Prometheus → http://localhost:9090
Grafana → http://localhost:3000

Usuário: admin
Senha: admin

---

## ⚙️ Configuração

O Prometheus está configurado para coletar suas próprias métricas a cada 5 segundos:

```bash
scrape_interval: 5s
```

No Grafana, você pode adicionar o Prometheus como Data Source usando a URL:

```bash
http://prometheus:9090
```

---

## 💡 Observações

- Este é um exemplo mínimo apenas para estudo.
- É possível adicionar exporters (Node Exporter, cAdvisor, etc.) para coletar métricas do host ou containers.
- O Grafana permite importar dashboards prontos do site oficial.

---

## 🔗 Referências

- [Prometheus Docs](https://prometheus.io/docs/introduction/overview/)
- [Grafana Docs](https://grafana.com/docs/)
- [Dashboards Grafana](https://grafana.com/grafana/dashboards/)