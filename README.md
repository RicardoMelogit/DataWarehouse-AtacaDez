# DataWarehouseAtacaDez

## 📌 Visão Geral

Este projeto tem como objetivo a construção de uma **arquitetura completa de dados**, contemplando **Data Lake** e **Data Warehouse**, utilizando boas práticas de **engenharia de dados**, **modelagem dimensional** e **processos de ETL**.

O projeto está sendo desenvolvido como **parte prática e aplicada das formações de Data Warehouse com Data Lake e SQL Server da Alura**, com foco em aprendizado técnico profundo, organização de código, documentação e versionamento em Git.

> ⚠️ **Status do projeto:** Em desenvolvimento  
> Este repositório reflete um projeto educacional em evolução contínua.

---

## 🎯 Objetivos do Projeto

- Implementar um **Data Lake relacional** para armazenamento inicial dos dados
- Construir um **Data Warehouse dimensional** seguindo o modelo estrela
- Desenvolver **pipelines de ETL** utilizando SSIS
- Aplicar conceitos de:
  - Granularidade
  - Tabelas fato e dimensão
  - Chaves substitutas (surrogate keys)
  - Carga incremental
  - Dimensão lentamente mutável (SCD)
- Preparar os dados para consumo analítico (ex: Power BI)

---

## 🏗️ Arquitetura de Dados

### 🔹 Data Lake (DL)

O **Data Lake** foi modelado em SQL Server com estrutura relacional, servindo como camada de persistência inicial dos dados brutos tratados.

**Principais características:**
- Estrutura orientada a tabelas
- Inclusão de metadados de carga
- Rastreamento de origem dos dados
- Preparado para cargas incrementais

**Tabelas principais:**
- `tbl_produto`
- `tbl_cliente`
- `tbl_empresa`

Cada tabela possui campos de controle como:
- `arquivo_origem`
- `data_carga`

---

### 🔹 Data Warehouse (DW)

O **Data Warehouse** foi modelado utilizando **modelagem dimensional (esquema estrela)**, com separação clara entre fatos e dimensões.

**Tabela Fato:**
- `fact_venda`

**Dimensões:**
- `dim_produto`
- `dim_cliente`
- `dim_empresa`
- `dim_tempo`
- `dim_fornecedor`
- `dim_departamento`

A modelagem foi realizada com **SQL Power Architect**, respeitando boas práticas de BI e performance analítica.

---

## 🔄 Processos de ETL

Os processos de **ETL (Extract, Transform, Load)** foram desenvolvidos utilizando:

- **SQL Server Integration Services (SSIS)**
- **Visual Studio**

### Funcionalidades implementadas nos pacotes SSIS:

- Leitura de múltiplas fontes (CSV, XLSX, JSON, XML)
- Conversão e padronização de tipos de dados
- Inclusão de colunas de metadados
- Classificação e junção de dados
- Carga incremental
- Preparação para dimensões lentamente mutáveis (SCD)

**Pacotes principais:**
- `CargaDataLake.dtsx`
- `CargaDataWarehouse.dtsx`

---

## 🧰 Tecnologias Utilizadas

- **SQL Server 2022**
- **SQL Server Integration Services (SSIS)**
- **Visual Studio**
- **SQL Power Architect**
- **Git & GitHub**
- **Modelagem Dimensional**
- **ETL / ELT**

---

## 📁 Estrutura do Repositório

```text
├── CargaDataWarehouse/
│   ├── CargaDataLake.dtsx
│   ├── CargaDataWarehouse.dtsx
│   ├── Project.params
│   └── *.dtproj
│
├── CriacaoDataLake/
│   ├── Tabelas/
│   │   ├── tbl_cliente.sql
│   │   ├── tbl_empresa.sql
│   │   └── tbl_produto.sql
│   └── CriacaoDataLake.sqlproj
│
├── DatawarehouseAtacaDez.sln
├── .gitignore
└── README.md

*Obs.: Alguns arquivos e pastas ainda serão adicionados conforme o avanço do projeto.*

---

## 📚 Contexto Educacional

Este projeto foi desenvolvido **para fins educacionais**, como parte da **Formação de Data Warehouse com Data Lake e SQL Server da Alura**.

Todo o desenvolvimento foi realizado pelo autor, aplicando os conceitos ensinados durante a formação e adaptando-os às boas práticas do mercado de dados.

---

## 👨‍💻 Autor

**Ricardo Oliveira Melo**  
Analista de Dados / Engenharia de Dados (em formação)

**Principais competências:**
- SQL Server
- Data Warehouse e Data Lake
- ETL com SSIS
- Modelagem Dimensional
- Power BI

GitHub: https://github.com/RicardoMelogit

---

## 🚧 Status do Projeto

- [x] Modelagem do Data Lake
- [x] Modelagem do Data Warehouse
- [x] Estrutura inicial dos pacotes ETL
- [x] Implementação de SCD
- [ ] Finalização dos fluxos ETL
- [ ] Integração completa com Power BI
- [ ] Criação de dashboards analíticos
- [ ] Documentação final

---

## 📌 Observação Final

Este repositório representa um **projeto prático e realista**, desenvolvido com foco em aprendizado, portfólio e boas práticas de engenharia de dados.  
O projeto está em constante evolução e será atualizado conforme novas etapas forem concluídas.
