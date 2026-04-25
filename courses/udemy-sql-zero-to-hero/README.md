# SQL Zero to Hero - Estudos e Prática

Este repositório contém meus estudos, anotações teóricas e resoluções de desafios do curso **SQL Zero to Hero** (Udemy). O objetivo é consolidar o domínio em PostgreSQL, desde fundamentos até consultas complexas.

## 🚀 Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL 15 (via Docker)
* **IDE:** Visual Studio Code
* **Gestão de Banco:** SQLTools (Extensão VS Code)
* **Orquestração:** Docker Compose

## 📂 Estrutura do Repositório

```bash
.
├── courses/
│   └── udemy-sql-zero-to-hero/
│       ├── docker-compose.yml     # Configuração do container Postgres
│       ├── .env                   # Variáveis de ambiente (ignorado no Git)
│       ├── db_setup/              # Arquivos de backup do curso (.dat)
│       ├── teoria/                # Notas de aula em Markdown/LaTeX
│       └── exercicios/            # Scripts .sql com resoluções
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

3- Restauração dos dados (primeiro acesso)

O curso utiliza o banco de dados de exemplo dvdrental. Para restaurar as tabelas a partir dos arquivos do professor (db_setup), utilize o seguinte comando:

```bash
docker exec -it sql_zero_to_hero_db pg_restore -U seu_usuario -d curso_sql_zero_to_hero --no-owner --no-privileges -F d /tmp/db_setup

```

**OBS**: No lugar de "seu_usuario", coloque o usuario que você colocou no .env 

## 📊 Como Visualizar as Tabelas

No VS Code, utilize a extensão SQLTools.

Clique no icone de um database no canto inferior esquerdo escrito "Connect"
e depois clique no "+" da janelinha que abrirá 

Escolha o Postgres nas opções que irão aparecer e preencha os campos obrigatórios. Na prática, bastará colocar que a conexão é localhost e a porta é 5432.

Depois disso, basta criar a conexão. Para se conectar, basta colocar a credencial que
foi criada no .env

Feito isso, será criado um arquivo *.session.sql e as tabelas aparecerão no menu lateral prontas para consulta.

## 📝 Notas de Estudo

**Desativar container**: Após o uso, utilize docker-compose down para desativar o container. Seu progresso não será perdido.

**Persistência**: Os dados são persistidos localmente na pasta postgres_data/. 

**Versionamento**: A pasta postgres_data/ e o arquivo .env estão no .gitignore por segurança e performance.