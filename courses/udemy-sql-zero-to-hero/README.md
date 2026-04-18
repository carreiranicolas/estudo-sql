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

1. Variáveis de Ambiente

Crie um arquivo .env na raiz da pasta do curso com as seguintes definições:

```bash
DB_USER=seu_usuario
DB_PASSWORD=sua_senha

```