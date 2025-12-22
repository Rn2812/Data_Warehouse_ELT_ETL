-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-09-24 22:30:01 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g


-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE TB_DIM_ANIMAL 
    ( 
     SK_ID_ANIMAL         NUMBER  NOT NULL , 
     DT_NASCIMENTO_ANIMAL DATE  NOT NULL , 
     DS_RACA              VARCHAR2 (60)  NOT NULL , 
     DS_ESPECIE           VARCHAR2 (60)  NOT NULL , 
     DT_CARGA             DATE  NOT NULL , 
     ST_REGISTRO_ATUAL    VARCHAR2 (3)  NOT NULL , 
     ID_PROCESSO_ETL      NUMBER (8)  NOT NULL 
    ) 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.SK_ID_ANIMAL IS 'Código único de identificação para cada animal cadastrado. É a chave primária da tabela e estabelece a conexão com dados de saúde e histórico do animal em outras tabelas.
' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.DT_NASCIMENTO_ANIMAL IS 'Data exata de nascimento do animal. Essa informação é crucial para calcular a idade, determinar fases de vida (filhote, adulto, idoso) e planejar calendários de vacinação e check-ups específicos para cada faixa etária.' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.DS_RACA IS 'Campo descritivo para a raça do animal, como "Golden Retriever" ou "Siamês". Ajuda a classificar os animais e pode ser útil para identificar padrões de saúde ou comportamento associados a raças específicas.
' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.DS_ESPECIE IS 'Descreve a espécie do animal (por exemplo, "Canina", "Felina", "Ave", "Réptil"). Essencial para organizar os serviços, produtos e protocolos de atendimento de forma adequada para cada tipo de animal.
' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.DT_CARGA IS 'Esse campo sera para mostrar a Data em que o registro foi inserido no DW' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.ST_REGISTRO_ATUAL IS 'Indicador do registro atual (1 = vigente, 0 = histórico).
 ' 
;

COMMENT ON COLUMN TB_DIM_ANIMAL.ID_PROCESSO_ETL IS 'Identificador único da execução do processo ETL responsável pela carga.' 
;

ALTER TABLE TB_DIM_ANIMAL 
    ADD CONSTRAINT SK_TB_DIM_ANIMAL PRIMARY KEY ( SK_ID_ANIMAL ) ;

CREATE TABLE TB_DIM_LOJA 
    ( 
     SK_ID_LOJA       NUMBER  NOT NULL , 
     NM_LOJA          VARCHAR2 (100)  NOT NULL , 
     NR_CNPJ          NUMBER (20)  NOT NULL , 
     NR_LOJA          VARCHAR2 (10)  NOT NULL , 
     DS_LOGRADOURO    VARCHAR2 (150)  NOT NULL , 
     DS_NUMERO_LOJA   VARCHAR2 (20)  NOT NULL , 
     DT_FUNDACAO      DATE  NOT NULL , 
     IM_SOBRE_SERVICO NUMBER (10,2)  NOT NULL , 
     NR_CEP           VARCHAR2 (10)  NOT NULL , 
     NM_BAIRRO        VARCHAR2 (50)  NOT NULL , 
     NM_CIDADE        VARCHAR2 (150)  NOT NULL , 
     NM_ESTADO        VARCHAR2 (50)  NOT NULL , 
     SG_ESTADO        VARCHAR2 (2)  NOT NULL , 
     DT_CARGA         DATE  NOT NULL , 
     ID_PROCESSO_ETL  NUMBER (8)  NOT NULL 
    ) 
;

COMMENT ON COLUMN TB_DIM_LOJA.SK_ID_LOJA IS 'Campo SK_NUM_LOJA da tabela TB_DIM_LOJA, referente a "Código da loja". Identifica de forma única cada cadastro do estabelecimento no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NM_LOJA IS 'Nome comercial da unidade ou filial. Facilita a identificação da loja em relatórios e no sistema, sendo a base para a gestão de múltiplas unidades de atendimento.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NR_CNPJ IS 'Número do Cadastro Nacional da Pessoa Jurídica da loja. É um identificador fiscal legalmente exigido, usado para auditorias, emissão de notas fiscais e conformidade regulatória.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NR_LOJA IS 'Número interno ou código de identificação da loja no sistema. Usado para referenciar a unidade de forma rápida em processos internos e para ligar transações e consultas à loja correspondente.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.DS_LOGRADOURO IS 'Nome da rua, avenida ou praça do endereço físico da loja. Permite a localização geográfica da unidade e é fundamental para a navegação ou para serviços de entrega e atendimento externo.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.DS_NUMERO_LOJA IS 'Número do imóvel da loja. Junto com o logradouro e bairro, compõe o endereço completo.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.DT_FUNDACAO IS 'Data em que a loja foi estabelecida. Permite análises sobre a longevidade da loja e seu desempenho ao longo do tempo.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.IM_SOBRE_SERVICO IS 'Percentual de imposto sobre serviços (ISS) que deve ser aplicado às vendas e transações. Essencial para o cálculo correto dos impostos e para o cumprimento das obrigações fiscais.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NR_CEP IS 'Código de Endereçamento Postal. Ajuda a identificar a região da loja e pode ser usado para segmentar clientes por área geográfica, ou para serviços de entrega.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NM_BAIRRO IS 'Nome do bairro onde a loja está situada. Útil para análises geográficas e de mercado.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NM_CIDADE IS 'Nome da cidade da loja. Essencial para análises demográficas, gestão regional e planejamento estratégico de expansão.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.NM_ESTADO IS 'Nome do estado brasileiro, como ''São Paulo'' ou ''Rio de Janeiro''. Permite a segmentação de dados por região e é crucial para o cumprimento de regulamentações fiscais e operacionais estaduais.' 
;

COMMENT ON COLUMN TB_DIM_LOJA.SG_ESTADO IS 'Sigla do estado brasileiro, como ''SP'' ou ''RJ''. Permite a segmentação de dados por região e é crucial para o cumprimento de regulamentações fiscais e operacionais estaduais.
' 
;

COMMENT ON COLUMN TB_DIM_LOJA.DT_CARGA IS 'Esse campo sera para mostrar a Data em que o registro foi inserido no DW.' 
;

COMMENT ON COLUMN TB_DIM_LOJA.ID_PROCESSO_ETL IS 'Identificador único da execução do processo ETL responsável pela carga.' 
;

ALTER TABLE TB_DIM_LOJA 
    ADD CONSTRAINT SK_TB_DIM_LOJA PRIMARY KEY ( SK_ID_LOJA ) ;

CREATE TABLE TB_DIM_PESSOA 
    ( 
     SK_ID_PESSOA      NUMBER  NOT NULL , 
     CD_TIPO_PESSOA    NUMBER (4)  NOT NULL , 
     NM_PESSOA         VARCHAR2 (40)  NOT NULL , 
     DT_NASCIMENTO     DATE  NOT NULL , 
     NR_RG             VARCHAR2 (10)  NOT NULL , 
     NR_CPF            VARCHAR2 (14)  NOT NULL , 
     DS_EMAIL          VARCHAR2 (100)  NOT NULL , 
     DS_ESTADO_CIVIL   VARCHAR2 (10)  NOT NULL , 
     DS_SEXO_PESSOA    VARCHAR2 (1)  NOT NULL , 
     ST_PESSOA         VARCHAR2 (1)  NOT NULL , 
     TP_ENDERECO       VARCHAR2 (5)  NOT NULL , 
     NR_ENDERECO       VARCHAR2 (10)  NOT NULL , 
     DS_COMPLEMENTO    VARCHAR2 (20) , 
     DT_INICIO         DATE  NOT NULL , 
     DT_TERMINO        DATE  NOT NULL , 
     DS_LOGRADOURO     VARCHAR2 (100)  NOT NULL , 
     NR_CEP            VARCHAR2 (8)  NOT NULL , 
     NM_BAIRRO         VARCHAR2 (50)  NOT NULL , 
     NM_CIDADE         VARCHAR2 (50)  NOT NULL , 
     NM_ESTADO         VARCHAR2 (50)  NOT NULL , 
     SG_ESTADO         VARCHAR2 (2)  NOT NULL , 
     DT_CARGA          DATE  NOT NULL , 
     DT_ATUALIZACAO    DATE  NOT NULL , 
     ST_REGISTRO_ATUAL VARCHAR2 (3)  NOT NULL , 
     ID_PROCESSO_ETL   NUMBER (8)  NOT NULL 
    ) 
;

COMMENT ON COLUMN TB_DIM_PESSOA.SK_ID_PESSOA IS 'Campo Surrogate key da tabela DB_DIM_PESSOA, referente a "SK Id Pessoa". Identifica de forma única cada pessoa cadastrada no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.CD_TIPO_PESSOA IS 'Campo COD_TIPO_PESSOA da tabela DB_DIM_PESSOA, referente a "Código do Tipo de Pessoa". Define se a pessoa é cliente, funcionário, fornecedor ou outra categoria. Tipo: NUMBER, tamanho: 4 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NM_PESSOA IS 'Campo NOME_PESSOA da tabela DB_DIM_PESSOA, referente a "Nome da Pessoa". Armazena o nome completo utilizado para identificação. Tipo: VARCHAR2, tamanho: 40 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DT_NASCIMENTO IS 'Campo DT_NASCIMENTO da tabela DB_DIM_PESSOA, referente a "Data de Nascimento". Registra a data de nascimento da pessoa para identificação e controle de idade. Tipo: DATE.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NR_RG IS 'Campo NUM_RG da tabela DB_DIM_PESSOA, referente a "Número do RG". Guarda o registro geral da pessoa, documento oficial de identificação. Tipo: VARCHAR2, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NR_CPF IS 'Campo NUM_CPF da tabela DB_DIM_PESSOA, referente a "Número do CPF". Armazena o CPF válido da pessoa, usado para cadastros fiscais e jurídicos. Tipo: VARCHAR2, tamanho: 14 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DS_EMAIL IS 'Campo EMAIL da tabela DB_DIM_PESSOA, referente a "E-mail". Guarda o endereço eletrônico da pessoa para contato e comunicação. Tipo: VARCHAR2, tamanho: 100 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DS_ESTADO_CIVIL IS 'Campo ESTADO_CIVIL da tabela DB_DIM_PESSOA, referente a "Estado Civil". Informa a condição civil da pessoa (solteiro, casado, etc.). Tipo: VARCHAR2, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DS_SEXO_PESSOA IS 'Campo SEXO_PESSOA da tabela DB_DIM_PESSOA, referente a "Sexo da Pessoa". Identifica o gênero da pessoa com código único (M/F/Outro). Tipo: CHAR, tamanho: 1 byte.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.ST_PESSOA IS 'Este campo do tipo CHAR(1) representa o status do registro da pessoa no sistema, geralmente utilizando valores como ''A'' para Ativo e ''I'' para Inativo. É um campo de controle fundamental para a governança de dados. Um cliente inativo, por exemplo, pode ser excluído de campanhas de marketing ativas, mas seu histórico deve ser mantido para fins de análise e conformidade legal. Este atributo garante que apenas registros válidos e ativos sejam considerados nas operações do dia a dia, como agendamentos e vendas, ao mesmo tempo que preserva a integridade do histórico de dados para o Data Warehouse.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.TP_ENDERECO IS 'Abreviação que define a natureza do endereço (RES, COM, COB, ENT, etc.), diferenciando finalidades residencial, comercial, cobrança ou entrega. Campo de texto curto, padronizado, com até 5 caracteres.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NR_ENDERECO IS 'Número da edificação no logradouro, identificando a posição do imóvel (ex.: 123, 4567). Campo numérico inteiro, sem formatação, aceitando até 6 dígitos. Essencial para localização e correspondência.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DS_COMPLEMENTO IS 'Informação complementar do endereço que detalha a unidade interna (ex.: APTO 101, BLOCO B, CASA 2). Campo de texto opcional, até 20 caracteres, útil para localizar entradas, torres ou conjuntos.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DT_INICIO IS 'Data a partir da qual o registro passa a valer. Marca o início da vigência de um endereço ou vínculo. Armazena somente data (AAAA-MM-DD), sem hora, usada para histórico, versionamento e auditoria.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DT_TERMINO IS 'Data em que a validade do registro se encerra. Indica fim de vigência de endereço ou período. Apenas data (AAAA-MM-DD), sem hora. Permite controle de histórico, cortes temporais e consultas ativas.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DS_LOGRADOURO IS 'Nome completo do logradouro onde o imóvel se localiza (rua, avenida, alameda, estrada, etc.). Campo de texto livre, até 100 caracteres, sem abreviações obrigatórias. Base para CEP e roteirização.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NR_CEP IS 'Código de Endereçamento Postal do Brasil, composto por 8 dígitos numéricos, sem hífen. Identifica região, setor e distribuição do endereço. Fundamental para validação, geocodificação e entregas.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NM_BAIRRO IS 'Campo NOME_BAIRRO da tabela DB_DIM_PESSOA, referente a "Nome dO bairro". Armazena o nome completo utilizado para identificação. Tipo: VARCHAR2, tamanho: 40 bytes.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NM_CIDADE IS 'Nome da cidade (município) onde o endereço está situado. Campo de texto, até 20 caracteres. Usado em padronização, relatórios e integrações. Ideal manter ortografia oficial e acentuação correta.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.NM_ESTADO IS 'Nome por extenso do estado (Unidade Federativa) do endereço, como São Paulo ou Rio de Janeiro. Campo de texto, até 50 caracteres. Deve seguir nomenclatura oficial para consistência cadastral.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.SG_ESTADO IS 'Sigla da Unidade Federativa (UF) do endereço, com duas letras (ex.: SP, RJ, MG). Campo de texto fixo, 2 caracteres, validado contra lista oficial. Essencial para padronização e regras fiscais.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DT_CARGA IS 'ESTE CAMPO IRA RECEBEBER COMO ATRIBUTO  A DATA EM QUE EM QUE O REGISTRO FOI INSERIDO NO DW' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.DT_ATUALIZACAO IS 'Hora em que o registro foi inserido no Data Warehouse.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.ST_REGISTRO_ATUAL IS 'Este campo do tipo CHAR(3) representa a situação no sistema, geralmente utilizando valores como ''A'' para Ativo e ''I'' para Inativo. É um campo de controle fundamental para a governança de dados. Um cliente inativo, por exemplo, pode ser excluído de campanhas de marketing ativas, mas seu histórico deve ser mantido para fins de análise e conformidade legal. Este atributo garante que apenas registros válidos e ativos sejam considerados nas operações do dia a dia, como agendamentos e vendas, ao mesmo tempo que preserva a integridade do histórico de dados para o Data Warehouse.' 
;

COMMENT ON COLUMN TB_DIM_PESSOA.ID_PROCESSO_ETL IS 'Identificador único da execução do processo ETL responsável pela carga.' 
;

ALTER TABLE TB_DIM_PESSOA 
    ADD CONSTRAINT SK_TB_DIM_PESSOA PRIMARY KEY ( SK_ID_PESSOA ) ;

CREATE TABLE TB_DIM_TEMPO 
    ( 
     SK_ID_TEMPO         NUMBER  NOT NULL , 
     DT_REFERENCIA       DATE  NOT NULL , 
     NR_MES              NUMBER (2)  NOT NULL , 
     NR_ANO              NUMBER (4)  NOT NULL , 
     NR_ANO_MES          NUMBER (6)  NOT NULL , 
     NR_SEMESTRE         NUMBER (1)  NOT NULL , 
     NR_TRIMESTRE        NUMBER (1)  NOT NULL , 
     DS_DATA             VARCHAR2 (20)  NOT NULL , 
     DS_DATA_EXTENSO     VARCHAR2 (30)  NOT NULL , 
     DS_MES              VARCHAR2 (15)  NOT NULL , 
     DS_DIA_SEMANA       VARCHAR2 (15)  NOT NULL , 
     DS_DIA_UTIL_FERIADO VARCHAR2 (10)  NOT NULL , 
     DS_FIM_SEMANA       VARCHAR2 (10)  NOT NULL , 
     DS_MES_ANO          VARCHAR2 (20)  NOT NULL , 
     DS_ABV_MES          VARCHAR2 (3)  NOT NULL , 
     DS_SEMESTRE         VARCHAR2 (15)  NOT NULL , 
     DS_TRIMESTRE        VARCHAR2 (15)  NOT NULL , 
     DS_SEMESTRE_ANO     VARCHAR2 (25)  NOT NULL , 
     DS_TRIMESTRE_ANO    VARCHAR2 (25)  NOT NULL , 
     DS_ABV_MES_ANO      VARCHAR2 (10)  NOT NULL , 
     NR_DIA_SEMANA       NUMBER (1)  NOT NULL , 
     NR_DIA_MES          NUMBER (2)  NOT NULL , 
     NR_DIA_ANO          NUMBER (3)  NOT NULL , 
     NR_HORA             NUMBER (4)  NOT NULL , 
     DT_CARGA            DATE  NOT NULL , 
     ID_PROCESSO_ETL     NUMBER (8)  NOT NULL 
    ) 
;

COMMENT ON COLUMN TB_DIM_TEMPO.SK_ID_TEMPO IS 'Campo SK_TEMPO da tabela TB_DIM_TEMPO, referente a "Código da loja". Identifica de forma única cada cadastro do estabelecimento no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DT_REFERENCIA IS 'Data completa, sendo a chave primária da tabela de tempo. Ela serve de referência para todos os atributos temporais, permitindo uma análise flexível e multidimensional.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_MES IS 'Número do mês do ano (1 a 12). Permite análises de desempenho mensais, como vendas e consultas.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_ANO IS 'Número do ano (ex: 2023). Essencial para análises anuais de desempenho, comparativos e tendências de longo prazo.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_ANO_MES IS 'Concatenação do ano e mês, como 202409. Útil para ordenação cronológica e para a criação de chaves compostas em outras tabelas.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_SEMESTRE IS 'Número do semestre do ano (1 ou 2). Útil para a análise de desempenho em períodos maiores que o trimestre, como sazonalidade semestral.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_TRIMESTRE IS 'Número do trimestre (1 a 4). Essencial para o monitoramento de metas e resultados de curto prazo, além de permitir comparações trimestrais.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_DATA IS 'Nome da data (ex: "Terça-feira"). Essencial para análises de tráfego e volume de atendimentos em dias específicos.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_DATA_EXTENSO IS 'A data completa por extenso, em formato legível para humanos. Ótimo para relatórios e exibição em interfaces.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_MES IS 'Nome do mês e ano por extenso (ex: "Setembro de 2024"). Ideal para títulos de relatórios e dashboards.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_DIA_SEMANA IS 'Nome do dia da semana (ex: "Terça-feira"). Essencial para análises de tráfego e volume de atendimentos em dias específicos.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_DIA_UTIL_FERIADO IS 'Indicador que distingue dias úteis de feriados. Crucial para analisar o impacto de feriados no desempenho operacional.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_FIM_SEMANA IS 'Indicador para dias de fim de semana. Essencial para a análise da sazonalidade de atendimentos em relação aos dias de trabalho.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_MES_ANO IS 'Nome do mês por extenso (ex: "Setembro"). Facilita a leitura e compreensão dos relatórios.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_ABV_MES IS 'Abreviação do nome do mês (ex: "Set"). Formato compacto para visualizações em dashboards e tabelas.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_SEMESTRE IS 'Descrição do semestre e ano, como "2º Semestre de 2024". Facilita a visualização e a leitura de relatórios.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_TRIMESTRE IS 'Descrição do trimestre e ano, como "3º Trimestre de 2024". Torna os relatórios mais legíveis e intuitivos para os usuários.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_SEMESTRE_ANO IS 'Descrição do semestre e ano, como "2º Semestre de 2024". Facilita a visualização e a leitura de relatórios.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_TRIMESTRE_ANO IS 'Descrição do trimestre e ano, como "3º Trimestre de 2024". Torna os relatórios mais legíveis e intuitivos para os usuários.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DS_ABV_MES_ANO IS 'Abreviação do mês e ano (ex: "Set 2024"). Formato compacto para rótulos em gráficos e relatórios.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_DIA_SEMANA IS 'Número do dia da semana, por exemplo, 1 para domingo e 7 para sábado. Útil para cálculos e lógica de negócios.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_DIA_MES IS 'Número do dia dentro do mês (1 a 31). Permite a análise diária de métricas e ajuda a identificar padrões em curtos períodos de tempo.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_DIA_ANO IS 'Número do dia dentro do ano, de 1 a 366 em anos bissextos. Permite análises de tendências diárias ao longo de um ano completo.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.NR_HORA IS 'Número da hora do dia, de 0 a 23. Permite a análise do fluxo de atendimentos por hora, ajudando a identificar horários de pico e otimizar a alocação de equipe.
' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.DT_CARGA IS 'Esse campo sera para mostrar a Data em que o registro foi inserido no DW.' 
;

COMMENT ON COLUMN TB_DIM_TEMPO.ID_PROCESSO_ETL IS 'Identificador único da execução do processo ETL responsável pela carga.' 
;

ALTER TABLE TB_DIM_TEMPO 
    ADD CONSTRAINT SK_TB_DIM_TEMPO PRIMARY KEY ( SK_ID_TEMPO ) ;

CREATE TABLE TB_FTO_CONSULTA 
    ( 
     SK_ID_PESSOA      NUMBER  NOT NULL , 
     SK_ID_LOJA        NUMBER  NOT NULL , 
     SK_ID_ANIMAL      NUMBER  NOT NULL , 
     SK_ID_TEMPO       NUMBER  NOT NULL , 
     NR_CONSULTA       NUMBER (10)  NOT NULL , 
     DT_CONSULTA       DATE  NOT NULL , 
     VL_TOTAL_CONSULTA NUMBER (10,2)  NOT NULL , 
     ST_CONSULTA       VARCHAR2 (10)  NOT NULL , 
     NR_ITEM_CONSULTA  NUMBER (10)  NOT NULL , 
     VL_UNIT_SERVICO   NUMBER (10,2)  NOT NULL , 
     QT_SERVICO        NUMBER (5)  NOT NULL , 
     ST_ITEM_SERVICO   VARCHAR2 (3)  NOT NULL , 
     VL_DESCONTO       NUMBER (10,2)  NOT NULL , 
     DS_DESCONTO       VARCHAR2 (20)  NOT NULL , 
     NM_FONTE_DADOS    VARCHAR2 (50)  NOT NULL , 
     DT_CARGA          DATE  NOT NULL , 
     ID_PROCESSO_ETL   NUMBER (8)  NOT NULL 
    ) 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.SK_ID_PESSOA IS 'Campo Surrogate key da tabela DB_DIM_PESSOA, referente a "SK Id Pessoa". Identifica de forma única cada pessoa cadastrada no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.SK_ID_LOJA IS 'Campo Surrogate key da tabela DB_DIM_LOJA, referente a "SK Id Loja". Identifica de forma única cada pessoa cadastrada no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.SK_ID_ANIMAL IS 'Campo Surrogate key da tabela DB_DIM_ANIMAL, referente a "SK Id Animal". Identifica de forma única cada pessoa cadastrada no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.SK_ID_TEMPO IS 'Campo Surrogate key da tabela DB_DIM_TEMPO, referente a "SK Id Tempo". Identifica de forma única cada pessoa cadastrada no sistema. Utilizado como chave primária em relacionamentos. Tipo: NUMBER, tamanho: 10 bytes.' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.NR_CONSULTA IS 'Identificador único para cada consulta ou atendimento. Serve como chave primária para esta tabela e é o ponto central para rastrear todos os detalhes de um serviço prestado, como valor, itens e status.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.DT_CONSULTA IS 'Data e hora em que a consulta foi realizada. Fundamental para análises de volume de atendimentos ao longo do tempo (diário, semanal, mensal), sazonalidade e desempenho operacional da loja.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.VL_TOTAL_CONSULTA IS 'Valor final pago pelo cliente por todos os serviços e produtos em uma única consulta. É a principal métrica para análises de receita e desempenho financeiro.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.ST_CONSULTA IS 'Status atual da consulta (por exemplo, "Agendada", "Realizada", "Cancelada"). É útil para a gestão do fluxo de trabalho e para identificar consultas que não foram concluídas.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.NR_ITEM_CONSULTA IS 'Código que identifica um item individual dentro de uma consulta. Permite detalhar o que foi comprado ou utilizado (exames, vacinas, produtos) e analisar o desempenho de cada serviço.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.VL_UNIT_SERVICO IS 'Preço de um único item ou serviço. Essencial para o cálculo do valor total e para a análise de rentabilidade de cada produto ou serviço.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.QT_SERVICO IS 'Quantidade de um serviço ou produto específico adquirido. Utilizado para calcular o valor total do item e para o controle de estoque de produtos vendidos.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.ST_ITEM_SERVICO IS 'Status do item de serviço, como "Concluído" ou "Pendente".
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.VL_DESCONTO IS 'OBS: INCLUIR NA ORIGEM DOS DADOS  - Valor de desconto aplicado. Importante para a análise de margem de lucro e para entender a eficácia de promoções.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.DS_DESCONTO IS 'OBS: INCLUIR NA ORIGEM DOS DADOS  - Descrição do desconto aplicado. Importante para a análise de margem de lucro e para entender a eficácia de promoções.
' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.NM_FONTE_DADOS IS 'Nome da tabela, arquivo ou sistema de origem de onde os dados foram extraídos.' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.DT_CARGA IS 'Esse campo sera para mostrar a Data em que o registro foi inserido no DW.
 ' 
;

COMMENT ON COLUMN TB_FTO_CONSULTA.ID_PROCESSO_ETL IS 'Identificador único da execução do processo ETL responsável pela carga.' 
;

ALTER TABLE TB_FTO_CONSULTA 
    ADD CONSTRAINT SK_FTO_CONSULTA PRIMARY KEY ( SK_ID_PESSOA, SK_ID_LOJA, SK_ID_ANIMAL, SK_ID_TEMPO ) ;

ALTER TABLE TB_FTO_CONSULTA 
    ADD CONSTRAINT DIM_ANIMAL_FTO_CONSULTA FOREIGN KEY 
    ( 
     SK_ID_ANIMAL
    ) 
    REFERENCES TB_DIM_ANIMAL 
    ( 
     SK_ID_ANIMAL
    ) 
;

ALTER TABLE TB_FTO_CONSULTA 
    ADD CONSTRAINT DIM_LOJA_FTO_CONSULTA FOREIGN KEY 
    ( 
     SK_ID_LOJA
    ) 
    REFERENCES TB_DIM_LOJA 
    ( 
     SK_ID_LOJA
    ) 
;

ALTER TABLE TB_FTO_CONSULTA 
    ADD CONSTRAINT DIM_PESSOA_FTO_CONSULTA FOREIGN KEY 
    ( 
     SK_ID_PESSOA
    ) 
    REFERENCES TB_DIM_PESSOA 
    ( 
     SK_ID_PESSOA
    ) 
;

ALTER TABLE TB_FTO_CONSULTA 
    ADD CONSTRAINT DIM_TEMPO_FTO_CONSULTA FOREIGN KEY 
    ( 
     SK_ID_TEMPO
    ) 
    REFERENCES TB_DIM_TEMPO 
    ( 
     SK_ID_TEMPO
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
