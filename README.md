# 📂 Portfólio Acadêmico: Data Warehousing & Modelagem Dimensional

![Oracle DB](https://img.shields.io/badge/Oracle_Database-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![SQL Developer](https://img.shields.io/badge/SQL_Developer-4D4D4D?style=for-the-badge&logo=oracle&logoColor=white)
![Data Modeler](https://img.shields.io/badge/Data_Modeler-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![StarUML](https://img.shields.io/badge/StarUML-2C2255?style=for-the-badge&logo=uml&logoColor=white)
![Draw.io](https://img.shields.io/badge/Draw.io-F08705?style=for-the-badge&logo=diagrams.net&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

> **2º Semestre - FIAP 2025** > Este repositório consolida a entrega final da disciplina de Data Warehousing, contendo a modelagem lógica e relacional de **5 cenários de negócios reais** utilizando a arquitetura **Star Schema**.

---

## 🏗️ Estrutura do Repositório
O projeto está organizado conforme a estrutura técnica exigida, contendo:
* `DMD`: Arquivos fontes do Oracle Data Modeler.
* `PDF`: Documentação dos modelos Lógicos e Relacionais.
* `SQL`: Scripts de DDL (Criação) e DML (Inserts).

---

## 🚀 Resumo dos Projetos

Clique nas setas abaixo para ver os detalhes técnicos de cada Case de Sucesso.

<details>
<summary><h3>🍔 1. Dublin Burger (D_Burger) - Food Service Analytics</h3></summary>

**Cenário:** Uma hamburgueria precisava analisar o desempenho de vendas, eficiência de entregas e, crucialmente, a satisfação do cliente baseada em avaliações (estrelas).

**Arquitetura Star Schema:**
* **Tabela Fato:** `FTO_VENDA_DBURGER`
    * Centraliza métricas de valor total de venda e pedidos.
* **Dimensões Principais:**
    * `DIM_CLIENTE`: Rastreia dados demográficos e o sistema de fidelidade (`NR_ESTRELAS`, `DS_ESTRELAS_EXTENSO`).
    * `DIM_LOJA`: Monitora as filiais, datas de inauguração/encerramento e endereços.
    * `DIM_FUNCIONARIOS`: Detalha quem realizou a venda, incluindo gênero e tempo de casa.
    * `DIM_PAGAMENTOS`: Analisa formas de pagamento e taxas aplicadas.
    
**Destaque Técnico:** Modelagem de granularidade fina para identificar quais bairros (`NM_BAIRRO`) possuem os clientes com melhores avaliações.
</details>

<details>
<summary><h3>🎬 2. FiveStar Cinemas - Entretenimento & Bilheteria</h3></summary>

**Cenário:** Rede de cinemas que necessita monitorar a ocupação de salas, desempenho de filmes por distribuidora e eficácia de promoções.

**Arquitetura Star Schema:**
* **Tabela Fato:** `FTO_VENDA`
    * Métricas: Quantidade vendida, Valor do produto, Valor líquido, Impostos.
* **Dimensões Principais:**
    * `DIM_FILME`: Rica em atributos como Gênero, Duração, Idioma Original, Tradução e Distribuidor.
    * `DIM_CINEMA`: Estrutura física das salas, tipos de assento e poltronas.
    * `DIM_INGRESSO`: Gerencia tipos de ingressos e campanhas promocionais (`CD_PROMOCAO`).
    * `DIM_CLIMA` e `DIM_TEMPO`: Cruzamento de dados de vendas com condições climáticas e sazonalidade.

**Destaque Técnico:** Capacidade de analisar a receita por "Assento" e "Tipo de Sessão", permitindo otimização de layout de salas.
</details>

<details>
<summary><h3>🏎️ 3. Radares Inteligentes - Smart Cities & IoT</h3></summary>

**Cenário:** Projeto de cidade inteligente focado no monitoramento de tráfego, correlacionando infrações com fatores ambientais e infraestruturais.

**Arquitetura Star Schema:**
* **Tabela Fato:** `TB_FATO_TRAFEGO`
    * Métricas: Quantidade de veículos, Valor da multa, Velocidade Registrada vs. Permitida.
* **Dimensões Principais:**
    * `TB_DIM_COND_PISTA`: Analisa o estado da via no momento do registro.
    * `TB_DIM_CLIMA`: Monitora temperatura, umidade e condições extremas (chuva/neblina).
    * `TB_DIM_RADAR`: Cadastro de equipamentos, fabricantes e datas de manutenção.
    * `TB_DIM_VEICULO`: Identificação de origem da placa (nacional/estrangeira) e modelo.

**Destaque Técnico:** Integração complexa de dados de IoT (sensores de clima e radar) para prever padrões de infrações.
</details>

<details>
<summary><h3>🐾 4. Arca de Noé - Gestão Veterinária</h3></summary>

**Cenário:** Clínica veterinária e Petshop focada na análise de atendimentos clínicos, controlando o histórico médico e faturamento por espécie.

**Arquitetura Star Schema:**
* **Tabela Fato:** `TB_FTO_CONSULTA`
    * Métricas: Valor total da consulta, Descontos aplicados e Quantidade de serviços.
* **Dimensões Principais:**
    * `TB_DIM_ANIMAL`: Rastreabilidade completa por Espécie, Raça e Data de Nascimento.
    * `TB_DIM_PESSOA`: Cadastro unificado de Clientes (Donos) e Veterinários, diferenciados por `CD_TIPO_PESSOA`.
    * `TB_DIM_LOJA`: Dados das clínicas, incluindo metragem e fundação.

**Destaque Técnico:** Modelagem flexível na dimensão `PESSOA`, permitindo que um mesmo cadastro atue em diferentes papéis no sistema.
</details>

<details>
<summary><h3>📊 5. GBS (Future of Work) - Pesquisa de Mercado</h3></summary>

**Cenário:** Análise de pesquisas sobre o "Futuro do Trabalho", medindo a percepção de profissionais sobre habilidades futuras.

**Arquitetura Star Schema:**
* **Tabela Fato:** `FATO_AVALIACAO`
    * Métricas: Nota da avaliação (`VL_NOTA_AVALIACAO`) e Quantidade de respostas.
* **Dimensões Principais:**
    * `DIM_PESQUISA`: Temas abordados e "Habilidades Futuras" mapeadas.
    * `DIM_PARTICIPANTE`: Perfil demográfico, escolaridade e gênero dos entrevistados.
    * `DIM_PROFISSAO`: Hierarquia de cargos (Gestor, Diretor) e Área de Atuação.
    * `DIM_CANAL`: Origem da coleta dos dados (Online, Presencial, etc.).

**Destaque Técnico:** Foco em *Survey Analytics*, permitindo cruzar "Nível de Escolaridade" com "Percepção de Habilidades".
</details>

---

## 🛠️ Tecnologias & Conceitos Aplicados

* **Banco de Dados:** Oracle Database 19c (Cloud/Local).
* **Modelagem:** Oracle SQL Developer Data Modeler, StarUML, Draw.io.
* **Cloud & Infra:** Microsoft Azure (Armazenamento de artefatos/Docs).
* **Conceitos:** Star Schema, Granularidade, SCD (Slowly Changing Dimensions).

---

## 👥 Autores

| RM | Nome | Função |
| :--- | :--- | :--- |
| **RM559943** | **André Alves** | Modelagem & Documentação |
| **RM559723** | **Guilherme Peçanha** | Modelagem & Documentação |
| **RM559947** | **Rodrigo Nillo** | Modelagem & Documentação |
| **RM559315** | **Thiago Novais** | Modelagem & Documentação |

---

---
