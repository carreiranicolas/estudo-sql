# Exercicios de SQL

Este repositório contém alguns tópicos de SQL para prática e fixação. O objetivo é que eu possa consolidar o domínio em PostgreSQL, especificamente em consultas complexas nos tópicos referentes a: JOINs, Window FUnctions, CTE, Subqueries e dentre outros.

## 🚀 Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL 15 (via Docker)
* **IDE:** Visual Studio Code
* **Gestão de Banco:** SQLTools (Extensão VS Code)
* **Orquestração:** Docker Compose

## 📂 Estrutura do Repositório

```bash
.
├── exercises/
│   └── ├── docker-compose.yml     # Configuração do container Postgres
│       ├── .env                   # Variáveis de ambiente (ignorado no Git)
│       ├── northwind.sql          # Arquivo .sql do docker entrypoint para criar o db
        └── exercicios/            # Scripts .sql com resoluções
│           ├── challenges/
│           └── assessments/
└── README.md

```

## 🛠️ Configuração do Ambiente

Para reproduzir este ambiente, você precisará do Docker e Docker Desktop instalados.

1-  Variáveis de Ambiente

Crie um arquivo .env na raiz da pasta do curso com as seguintes definições:

```bash
DB_USER=seu_usuario
DB_PASSWORD=sua_senha

```

2- Subir o banco de dados

```bash
docker-compose up -d

```

**OBS**: Como no docker-compose colocamos o northwind.sql no entrypoint, o docker vai ler o northwind.sql e criar as tabelas e inserir os dados sozinho, subindo assim o banco

## 📊 Como Visualizar as Tabelas

No VS Code, utilize a extensão SQLTools.

Clique no icone de um database no canto inferior esquerdo escrito "Connect"
e depois clique no "+" da janelinha que abrirá 

Escolha o Postgres nas opções que irão aparecer e preencha os campos obrigatórios. Na prática, bastará colocar que a conexão é localhost e a porta é 5433 (escolhi a porta 5433 porque ela está no docker compose. Acontece que eu já tinha um container de postgres rodando na porta 5432).

Depois disso, basta criar a conexão. Para se conectar, basta colocar a credencial que
foi criada no .env

Feito isso, será criado um arquivo *.session.sql e as tabelas aparecerão no menu lateral prontas para consulta.

## 📝 Notas de Estudo

**Persistência**: Os dados são persistidos localmente na pasta postgres_data_northwind/. 

**Desativar container**: Após o uso, utilize ```bash docker-compose down ``` para desativar o container. Seu progresso não será perdido.

**Outros acessos**: Sempre quando for estudar novamente, basta rodar o ```bash docker-compose up -d ```

**Versionamento**: A pasta postgres_data/ e o arquivo .env estão no .gitignore por segurança e performance.