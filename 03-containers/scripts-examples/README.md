# Scripts de exemplo para Docker

Esta pasta contém scripts simples para **subir, parar e acompanhar logs** da aplicação Java usada nos exemplos de containers.  
Os scripts são **didáticos**, para estudo de comandos básicos do Docker Compose.

---

## 📂 Estrutura dos scripts

| Script      | Função                                                  |
|-------------|---------------------------------------------------------|
| `start.sh`  | Sobe os containers em background                        |
| `stop.sh`   | Para e remove os containers                             |
| `logs.sh`   | Mostra os logs da aplicação em tempo real               |

---

## 📝 Uso dos scripts

> Todos os scripts assumem que você está dentro da pasta `scripts-examples/`  
> e que o arquivo `docker-compose.yaml` está em `../docker-examples/`

### 1️⃣ start.sh

```bash
./start.sh
```

- Subirá os containers definidos no docker-compose.yaml
- Mostrará os containers ativos (docker ps)
- Comentários dentro do script explicam cada passo

### 2️⃣ stop.sh

```bash
./stop.sh
```

### 3️⃣ logs.sh

```bash
./logs.sh
```

---

## ⚙️ Boas práticas

Torne os scripts executáveis:

```bash
chmod +x start.sh stop.sh logs.sh
```

- Sempre execute na pasta correta, para que o caminho relativo do docker-compose funcione
- Os scripts são didáticos, você pode expandir com mais comandos, por exemplo:

`docker-compose exec java-app bash` → entrar no container
`docker-compose restart java-app` → reiniciar um serviço específico