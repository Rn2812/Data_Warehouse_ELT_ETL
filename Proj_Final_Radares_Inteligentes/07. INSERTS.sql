-- ========================================
-- REGISTROS ADICIONAIS PARA TB_DIM_CLIMA
-- Total: 25 registros fictícios
-- ========================================



-- Registros 6-10: Variações de temperatura e umidade
INSERT INTO TB_DIM_CLIMA (
  SK_ID_CLIMA, DS_CLIMA, TP_TEMPERATURA, NR_TEMPERATURA_MEDIA, NR_UMIDADE,
  DS_CONDICAO_EXTREMA, DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA,
  DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 'Parcialmente Nublado', 'Média', 26.5, 58.0, '—', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(7, 'Chuvisco', 'Média', 21.0, 75.0, '—', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(8, 'Tempestade', 'Média', 23.5, 92.0, 'Tempestade Severa', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(9, 'Garoa', 'Baixa', 18.0, 82.0, '—', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(10, 'Céu Limpo', 'Alta', 33.0, 40.0, 'Calor Extremo', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

-- Registros 11-15: Condições especiais
INSERT INTO TB_DIM_CLIMA VALUES
(11, 'Neblina', 'Baixa', 16.5, 95.0, 'Baixa Visibilidade', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(12, 'Geada', 'Baixa', 2.0, 85.0, 'Geada', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(13, 'Granizo', 'Baixa', 15.0, 78.0, 'Granizo', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(14, 'Tornado', 'Média', 20.0, 85.0, 'Tornado', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'I');

INSERT INTO TB_DIM_CLIMA VALUES
(15, 'Furacão', 'Média', 28.0, 95.0, 'Furacão', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'I');

-- Registros 16-20: Variações sazonais
INSERT INTO TB_DIM_CLIMA VALUES
(16, 'Primavera Amena', 'Média', 22.0, 62.0, '—', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(17, 'Verão Quente', 'Alta', 35.0, 42.0, 'Onda de Calor', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(18, 'Outono Fresco', 'Média', 19.0, 68.0, '—', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(19, 'Inverno Gelado', 'Baixa', -5.0, 70.0, 'Frio Extremo', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(20, 'Nevoeiro Denso', 'Baixa', 14.0, 98.0, 'Visibilidade Zero', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

-- Registros 21-25: Condições tropicais e específicas
INSERT INTO TB_DIM_CLIMA VALUES
(21, 'Monção', 'Alta', 29.0, 90.0, 'Chuva Intensa', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(22, 'Seca', 'Alta', 38.0, 25.0, 'Seca Extrema', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(23, 'Brisa Leve', 'Média', 25.0, 55.0, '—', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(24, 'Trovoada', 'Média', 24.0, 85.0, 'Raios', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(25, 'Nevasca', 'Baixa', -8.0, 75.0, 'Nevasca', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

-- Registros 26-30: Condições adicionais variadas
INSERT INTO TB_DIM_CLIMA VALUES
(26, 'Chuva Leve', 'Média', 20.5, 72.0, '—', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(27, 'Céu Parcialmente Coberto', 'Média', 23.0, 60.0, '—', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(28, 'Ventania Forte', 'Média', 21.0, 58.0, 'Ventos Fortes', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_CLIMA VALUES
(29, 'Tufão', 'Alta', 30.0, 93.0, 'Tufão', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'I');

INSERT INTO TB_DIM_CLIMA VALUES
(30, 'Clima Agradável', 'Média', 24.5, 50.0, '—', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 1002, 1003, 1004, 1005, 1006
-- Status 'A' (Ativo): 23 registros
-- Status 'I' (Inativo): 2 registros
-- Temperaturas variando de -8°C a 38°C
-- Umidade variando de 25% a 98%
-- ========================================




-- ========================================
-- REGISTROS ADICIONAIS PARA TB_DIM_COND_PISTA
-- Total: 25 registros fictícios
-- ========================================


-- Registros 6-10: Condições básicas variadas
INSERT INTO TB_DIM_COND_PISTA (
  SK_ID_COND_PISTA, TP_COND_PISTA, DT_CARGA, NM_USUARIO_CARGA,
  NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 'Lisa', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(7, 'Áspera', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(8, 'Com Buracos', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(9, 'Escorregadia', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(10, 'Com Óleo', SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

-- Registros 11-15: Condições climáticas na pista
INSERT INTO TB_DIM_COND_PISTA VALUES
(11, 'Com Neve', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(12, 'Com Gelo', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(13, 'Alagada', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(14, 'Com Granizo', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'I');

INSERT INTO TB_DIM_COND_PISTA VALUES
(15, 'Encharcada', SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

-- Registros 16-20: Condições de manutenção
INSERT INTO TB_DIM_COND_PISTA VALUES
(16, 'Em Manutenção', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(17, 'Recém Asfaltada', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(18, 'Com Remendo', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(19, 'Desgastada', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(20, 'Deteriorada', SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'I');

-- Registros 21-25: Condições especiais
INSERT INTO TB_DIM_COND_PISTA VALUES
(21, 'Com Areia', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(22, 'Com Lama', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(23, 'Com Poeira', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(24, 'Irregular', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(25, 'Com Desnível', SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

-- Registros 26-30: Condições adicionais variadas
INSERT INTO TB_DIM_COND_PISTA VALUES
(26, 'Ondulada', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(27, 'Com Cascalho', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(28, 'Pavimentada', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(29, 'Terra Batida', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_COND_PISTA VALUES
(30, 'Concreto', SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 1002, 1003, 1004, 1005, 1006
-- Status 'A' (Ativo): 23 registros
-- Status 'I' (Inativo): 2 registros
-- 
-- Categorias incluídas:
-- - Condições básicas (lisa, áspera, etc.)
-- - Condições climáticas (neve, gelo, alagada)
-- - Condições de manutenção (em manutenção, recém asfaltada)
-- - Condições especiais (areia, lama, poeira)
-- - Tipos de pavimento (pavimentada, terra batida, concreto)
-- ========================================




-- ========================================
-- REGISTROS ADICIONAIS PARA TB_DIM_LOCAL
-- Total: 25 registros fictícios
-- CORRIGIDO: LC_HEMISFERIO com 3 caracteres (S/O)
-- ========================================

SELECT * FROM TB_DIM_LOCAL

-- Registros 6-10: Região Sul
INSERT INTO TB_DIM_LOCAL (
  SK_ID_LOCAL, NM_LOGRADOURO, NR_LOGRADOURO, NR_CEP, NM_BAIRRO, NM_CIDADE,
  NM_ESTADO, SG_ESTADO, NR_QUADRANTE, NR_LATITUDE, NR_LONGITUDE, LC_HEMISFERIO,
  DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 'Av. Independência', '850', '90035070', 'Centro Histórico', 'Porto Alegre',
 'Rio Grande do Sul', 'RS', 2, -30033900, -51230000, 'S/O',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(7, 'Rua das Palmeiras', '1250', '88015110', 'Centro', 'Florianópolis',
 'Santa Catarina', 'SC', 3, -27595700, -48548200, 'S/O',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(8, 'Av. Brasil', '3200', '85851340', 'Centro', 'Foz do Iguaçu',
 'Paraná', 'PR', 1, -25516100, -54585100, 'S/O',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(9, 'Rua Marechal Deodoro', '180', '95700000', 'Centro', 'Bento Gonçalves',
 'Rio Grande do Sul', 'RS', 4, -29168200, -51519200, 'S/O',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(10, 'Av. Sete de Setembro', '2500', '89010100', 'Centro', 'Blumenau',
 'Santa Catarina', 'SC', 2, -26919000, -49066100, 'S/O',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'I');

-- Registros 11-15: Região Sudeste
INSERT INTO TB_DIM_LOCAL VALUES
(11, 'Av. Goiás', '400', '14801320', 'Centro', 'Araraquara',
 'São Paulo', 'SP', 3, -21794300, -48175900, 'S/O',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(12, 'Rua Halfeld', '916', '36013000', 'Centro', 'Juiz de Fora',
 'Minas Gerais', 'MG', 1, -21759600, -43350200, 'S/O',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(13, 'Av. Rio Branco', '1800', '28625045', 'Centro', 'Nova Friburgo',
 'Rio de Janeiro', 'RJ', 4, -22281700, -42531500, 'S/O',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(14, 'Rua Barão de Jaguara', '1340', '13015927', 'Centro', 'Campinas',
 'São Paulo', 'SP', 2, -22906900, -47060100, 'S/O',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(15, 'Av. Getúlio Vargas', '1500', '29100010', 'Centro', 'Vila Velha',
 'Espírito Santo', 'ES', 3, -20329600, -40292400, 'S/O',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

-- Registros 16-20: Região Nordeste
INSERT INTO TB_DIM_LOCAL VALUES
(16, 'Av. Boa Viagem', '5000', '51021000', 'Boa Viagem', 'Recife',
 'Pernambuco', 'PE', 1, -80504800, -34953700, 'S/O',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(17, 'Rua Chile', '30', '40020000', 'Centro', 'Salvador',
 'Bahia', 'BA', 4, -12971100, -38510900, 'S/O',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(18, 'Av. Eng. Domingos Ferreira', '2200', '51020030', 'Boa Viagem', 'Recife',
 'Pernambuco', 'PE', 2, -80813700, -34898400, 'S/O',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'I');

INSERT INTO TB_DIM_LOCAL VALUES
(19, 'Rua Grande', '500', '65010440', 'Centro', 'São Luís',
 'Maranhão', 'MA', 3, -25299200, -44305800, 'S/O',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(20, 'Av. Epitácio Pessoa', '3500', '58038000', 'Bessa', 'João Pessoa',
 'Paraíba', 'PB', 1, -70903300, -34835100, 'S/O',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

-- Registros 21-25: Região Centro-Oeste e Norte
INSERT INTO TB_DIM_LOCAL VALUES
(21, 'Av. W3 Sul', '509', '70350000', 'Asa Sul', 'Brasília',
 'Distrito Federal', 'DF', 4, -15799400, -47891900, 'S/O',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(22, 'Av. Getúlio Vargas', '1300', '78005370', 'Centro Norte', 'Cuiabá',
 'Mato Grosso', 'MT', 2, -15597200, -56096900, 'S/O',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(23, 'Rua 14 de Julho', '1800', '74063010', 'Centro', 'Goiânia',
 'Goiás', 'GO', 3, -16678900, -49264100, 'S/O',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(24, 'Av. Eduardo Ribeiro', '650', '69010001', 'Centro', 'Manaus',
 'Amazonas', 'AM', 1, -30611600, -59981100, 'S/O',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(25, 'Travessa Padre Eutíquio', '1200', '66010020', 'Campina', 'Belém',
 'Pará', 'PA', 4, -14541100, -48490200, 'S/O',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'I');

-- Registros 26-30: Cidades adicionais variadas
INSERT INTO TB_DIM_LOCAL VALUES
(26, 'Av. Presidente Vargas', '2000', '36010020', 'Centro', 'Juiz de Fora',
 'Minas Gerais', 'MG', 2, -21762900, -43349200, 'S/O',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(27, 'Rua dos Andradas', '1001', '90020002', 'Centro Histórico', 'Porto Alegre',
 'Rio Grande do Sul', 'RS', 3, -30036100, -51220700, 'S/O',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(28, 'Av. Afonso Pena', '1234', '79002075', 'Centro', 'Campo Grande',
 'Mato Grosso do Sul', 'MS', 1, -20452800, -54606900, 'S/O',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(29, 'Rua das Flores', '888', '80010180', 'Centro', 'Curitiba',
 'Paraná', 'PR', 4, -25427200, -49271900, 'S/O',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_LOCAL VALUES
(30, 'Av. Borges de Medeiros', '3000', '95700000', 'Centro', 'Gramado',
 'Rio Grande do Sul', 'RS', 2, -29377600, -50874400, 'S/O',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 1002, 1003, 1004, 1005, 1006
-- Status 'A' (Ativo): 22 registros
-- Status 'I' (Inativo): 3 registros
-- 
-- CORREÇÃO APLICADA:
-- - LC_HEMISFERIO: 'S/O' (3 caracteres) ✓
-- - Compatível com VARCHAR2(5)
-- 
-- Distribuição Geográfica:
-- - Região Sul: 6 registros (RS, SC, PR)
-- - Região Sudeste: 5 registros (SP, MG, RJ, ES)
-- - Região Nordeste: 5 registros (PE, BA, MA, PB)
-- - Região Centro-Oeste: 3 registros (DF, MT, GO, MS)
-- - Região Norte: 2 registros (AM, PA)
-- - Adicional: 4 registros variados
-- 
-- Total de Estados Representados: 15 estados + DF
-- Total de Cidades: 24 cidades diferentes
-- ========================================

-- ========================================
-- REGISTROS ADICIONAIS PARA TB_DIM_RADAR
-- Total: 25 registros fictícios
-- ========================================
SELECT * FROM TB_DIM_RADAR

-- Registros 6-10: Fabricantes variados
INSERT INTO TB_DIM_RADAR (
  SK_ID_RADAR, NR_RADAR, NM_FABRICANTE, DT_FABRICACAO, DT_ULTIMA_MANUTENCAO,
  NM_MODELO, TP_RADAR, DT_ULTIMA_ATUALIZACAO_RADAR,
  DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 'RD-0006', 'SpeedMonitor', DATE '2022-08-15', DATE '2025-09-10',
 'SM-400', 'FIXO', DATE '2025-10-01',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(7, 'RD-0007', 'VeloxTech', DATE '2023-02-20', DATE '2025-07-25',
 'VX-350', 'MOVEL', DATE '2025-08-15',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(8, 'RD-0008', 'TrackSys', DATE '2021-06-30', DATE '2025-06-12',
 'TS-180', 'FIXO', DATE '2025-07-08',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(9, 'RD-0009', 'SafeRoad', DATE '2020-11-11', DATE '2025-05-05',
 'SR-300', 'MOVEL', DATE '2025-06-01',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(10, 'RD-0010', 'SpeedMonitor', DATE '2019-04-18', DATE '2024-08-20',
 'SM-350', 'FIXO', DATE '2024-10-15',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'I');

-- Registros 11-15: Modelos recentes
INSERT INTO TB_DIM_RADAR VALUES
(11, 'RD-0011', 'RoadSafe Pro', DATE '2024-01-10', DATE '2025-09-20',
 'RSP-500', 'FIXO', DATE '2025-10-10',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(12, 'RD-0012', 'VeloxTech', DATE '2023-09-05', DATE '2025-08-01',
 'VX-400', 'MOVEL', DATE '2025-09-05',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(13, 'RD-0013', 'TrackSys', DATE '2022-12-22', DATE '2025-07-10',
 'TS-200', 'FIXO', DATE '2025-08-01',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(14, 'RD-0014', 'SafeRoad', DATE '2021-03-14', DATE '2025-04-15',
 'SR-350', 'MOVEL', DATE '2025-05-20',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(15, 'RD-0015', 'SpeedMonitor', DATE '2020-07-07', DATE '2024-11-30',
 'SM-300', 'FIXO', DATE '2025-01-10',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'I');

-- Registros 16-20: Equipamentos diversos
INSERT INTO TB_DIM_RADAR VALUES
(16, 'RD-0016', 'AutoSpeed', DATE '2023-06-12', DATE '2025-09-15',
 'AS-100', 'MOVEL', DATE '2025-10-05',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(17, 'RD-0017', 'VeloxTech', DATE '2022-04-25', DATE '2025-06-20',
 'VX-250', 'FIXO', DATE '2025-07-15',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(18, 'RD-0018', 'RoadSafe Pro', DATE '2024-05-30', DATE '2025-10-01',
 'RSP-600', 'MOVEL', DATE '2025-10-20',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(19, 'RD-0019', 'TrackSys', DATE '2021-10-08', DATE '2025-03-12',
 'TS-250', 'FIXO', DATE '2025-04-08',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'I');

INSERT INTO TB_DIM_RADAR VALUES
(20, 'RD-0020', 'SafeRoad', DATE '2023-11-20', DATE '2025-08-25',
 'SR-400', 'MOVEL', DATE '2025-09-20',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

-- Registros 21-25: Equipamentos avançados
INSERT INTO TB_DIM_RADAR VALUES
(21, 'RD-0021', 'SpeedMonitor', DATE '2024-03-15', DATE '2025-09-30',
 'SM-450', 'FIXO', DATE '2025-10-25',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(22, 'RD-0022', 'AutoSpeed', DATE '2022-09-10', DATE '2025-07-05',
 'AS-200', 'MOVEL', DATE '2025-08-01',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(23, 'RD-0023', 'VeloxTech', DATE '2023-07-18', DATE '2025-08-18',
 'VX-500', 'FIXO', DATE '2025-09-15',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(24, 'RD-0024', 'RoadSafe Pro', DATE '2021-12-05', DATE '2025-05-10',
 'RSP-450', 'MOVEL', DATE '2025-06-15',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(25, 'RD-0025', 'TrackSys', DATE '2020-02-28', DATE '2024-10-20',
 'TS-100', 'FIXO', DATE '2024-12-01',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'I');

-- Registros 26-30: Modelos adicionais
INSERT INTO TB_DIM_RADAR VALUES
(26, 'RD-0026', 'SafeRoad', DATE '2024-02-14', DATE '2025-09-05',
 'SR-450', 'MOVEL', DATE '2025-10-01',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(27, 'RD-0027', 'SpeedMonitor', DATE '2023-04-22', DATE '2025-07-30',
 'SM-500', 'FIXO', DATE '2025-08-25',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(28, 'RD-0028', 'VeloxTech', DATE '2022-11-30', DATE '2025-06-15',
 'VX-450', 'MOVEL', DATE '2025-07-20',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(29, 'RD-0029', 'AutoSpeed', DATE '2021-08-08', DATE '2025-04-20',
 'AS-150', 'FIXO', DATE '2025-05-15',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_RADAR VALUES
(30, 'RD-0030', 'RoadSafe Pro', DATE '2020-05-16', DATE '2024-09-10',
 'RSP-400', 'MOVEL', DATE '2024-11-05',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'I');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 1002, 1003, 1004, 1005, 1006
-- Status 'A' (Ativo): 21 registros
-- Status 'I' (Inativo): 4 registros
-- 
-- Fabricantes incluídos:
-- - VeloxTech: 6 radares
-- - SafeRoad: 5 radares
-- - TrackSys: 5 radares
-- - SpeedMonitor: 5 radares
-- - RoadSafe Pro: 4 radares
-- - AutoSpeed: 3 radares
-- 
-- Tipos de Radar:
-- - FIXO: 14 registros
-- - MOVEL: 11 registros
-- 
-- Datas de Fabricação: 2019 a 2024
-- Última Manutenção: 2024 a 2025
-- Última Atualização: 2024 a 2025
-- ========================================


-- ========================================
-- REGISTROS ADICIONAIS PARA TB_DIM_VEICULO
-- Total: 25 registros fictícios
-- ========================================

SELECT * FROM TB_DIM_VEICULO

-- Registros 6-10: Veículos nacionais variados
INSERT INTO TB_DIM_VEICULO (
  SK_ID_VEICULO, DS_VEICULO, NM_MARCA, NM_MODELO, NR_PLACA,
  NM_COR, TP_PLACA, FG_PLACA_ESTRANGEIRA, PS_ORIGEM_PLACA,
  DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 'Carro', 'Volkswagen', 'Gol', 'UVW6X78', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(7, 'Moto', 'Yamaha', 'Factor 150', 'YZA7B89', 'Azul', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(8, 'SUV', 'Hyundai', 'Creta', 'BCD8E90', 'Cinza', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(9, 'Caminhão', 'Mercedes-Benz', 'Atego', 'FGH9I01', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(10, 'Van', 'Fiat', 'Ducato', 'JKL0M12', 'Prata', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'I');

-- Registros 11-15: Mix de veículos nacionais e estrangeiros
INSERT INTO TB_DIM_VEICULO VALUES
(11, 'Carro', 'Fiat', 'Argo', 'NOP1Q23', 'Vermelho', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(12, 'Moto', 'Suzuki', 'GSX-S 150', 'RST2U34', 'Preto', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(13, 'SUV', 'Ford', 'Territory', 'VWX3Y45', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(14, 'Caminhão', 'Scania', 'R 450', 'ZAB4C56', 'Azul', 'Mercosul-Estrangeira', 'SIM', 'Argentina',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(15, 'Carro', 'Renault', 'Kwid', 'DEF5G67', 'Laranja', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'I');

-- Registros 16-20: Veículos de luxo e utilitários
INSERT INTO TB_DIM_VEICULO VALUES
(16, 'Carro', 'BMW', '320i', 'HIJ6K78', 'Preto', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(17, 'Moto', 'Kawasaki', 'Ninja 400', 'LMN7O89', 'Verde', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(18, 'SUV', 'Toyota', 'Hilux', 'PQR8S90', 'Prata', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(19, 'Ônibus', 'Marcopolo', 'Viale', 'TUV9W01', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(20, 'Caminhão', 'Iveco', 'Tector', 'XYZ0A12', 'Vermelho', 'Mercosul-Estrangeira', 'SIM', 'Paraguai',
 SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'I');

-- Registros 21-25: Veículos diversos com placas estrangeiras
INSERT INTO TB_DIM_VEICULO VALUES
(21, 'Carro', 'Nissan', 'Kicks', 'BCD1E23', 'Cinza', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(22, 'Moto', 'BMW', 'G 310 GS', 'FGH2I34', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(23, 'SUV', 'Volkswagen', 'Tiguan', 'JKL3M45', 'Azul', 'Outra-Estrangeira', 'SIM', 'Chile',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(24, 'Carro', 'Peugeot', '208', 'NOP4Q56', 'Vermelho', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(25, 'Van', 'Renault', 'Master', 'RST5U67', 'Branco', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1005, SYSDATE, 10, 'I');

-- Registros 26-30: Veículos adicionais variados
INSERT INTO TB_DIM_VEICULO VALUES
(26, 'Carro', 'Chevrolet', 'Tracker', 'VWX6Y78', 'Prata', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(27, 'Moto', 'Honda', 'CB 500F', 'ZAB7C89', 'Preto', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(28, 'SUV', 'Jeep', 'Renegade', 'DEF8G90', 'Laranja', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(29, 'Caminhão', 'Volkswagen', 'Constellation', 'HIJ9K01', 'Branco', 'Mercosul-Estrangeira', 'SIM', 'Argentina',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'A');

INSERT INTO TB_DIM_VEICULO VALUES
(30, 'Carro', 'Hyundai', 'HB20', 'LMN0O12', 'Azul', 'Nacional', 'NAO', 'Brasil',
 SYSDATE, 'ETL_USER', 1006, SYSDATE, 10, 'I');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 1002, 1003, 1004, 1005, 1006
-- Status 'A' (Ativo): 21 registros
-- Status 'I' (Inativo): 4 registros
-- 
-- Tipos de Veículos:
-- - Carro: 11 registros
-- - Moto: 6 registros
-- - SUV: 5 registros
-- - Caminhão: 5 registros
-- - Van: 2 registros
-- - Ônibus: 1 registro
-- 
-- Marcas Representadas (17 diferentes):
-- - Nacionais populares: Volkswagen, Fiat, Chevrolet, Renault, Ford
-- - Importadas: Toyota, Honda, Hyundai, Nissan, Peugeot
-- - Premium: BMW, Jeep
-- - Caminhões: Volvo, Mercedes-Benz, Scania, Iveco, Volkswagen
-- - Motos: Honda, Yamaha, Suzuki, Kawasaki, BMW
-- - Ônibus: Marcopolo
-- 
-- Tipos de Placa:
-- - Nacional: 21 registros
-- - Mercosul-Estrangeira: 3 registros (Argentina, Paraguai)
-- - Outra-Estrangeira: 1 registro (Chile)
-- 
-- Cores Variadas:
-- Branco (7), Azul (4), Preto (3), Prata (3), Vermelho (3), 
-- Cinza (2), Laranja (2), Verde (1)
-- 
-- Placas no padrão Mercosul: ABC1D23
-- ========================================


-- ========================================
-- SCRIPT CONSOLIDADO FINAL - TB_DIM_TEMPO
-- CORRIGIDO para respeitar limites da tabela
-- ========================================
-- Período 1: 01/11/2025 a 07/11/2025 (168 registros)
-- Período 2: 08/11/2025 a 17/11/2025 (240 registros)
-- Período 3: 01/12/2025 a 10/12/2025 (240 registros)
-- TOTAL: 648 registros adicionais
-- ========================================

-- ========================================
-- PERÍODO 1: 01/11/2025 a 07/11/2025
-- ========================================
DECLARE
  v_dt_ini DATE := DATE '2025-11-01';
  v_dt_fim DATE := DATE '2025-11-07';
  v_dt     DATE;
  v_sk     NUMBER := 96;
  
  v_semestre NUMBER;
  v_trimestre NUMBER;
  v_fim_semana VARCHAR2(10);
  v_dia_util VARCHAR2(10);
  v_dy VARCHAR2(20);
  
BEGIN
  v_dt := v_dt_ini;
  WHILE v_dt <= v_dt_fim + 0.99999 LOOP
    
    v_semestre := CASE WHEN TO_NUMBER(TO_CHAR(v_dt,'MM')) <= 6 THEN 1 ELSE 2 END;
    v_trimestre := CEIL(TO_NUMBER(TO_CHAR(v_dt,'MM'))/3);
    v_dy := UPPER(TO_CHAR(v_dt, 'DY', 'NLS_DATE_LANGUAGE=PORTUGUESE'));
    v_fim_semana := CASE WHEN v_dy IN ('SÁB','SAB','DOM') THEN 'Sim' ELSE 'Não' END;
    v_dia_util := CASE WHEN v_fim_semana = 'Sim' THEN 'FDS' ELSE 'Útil' END;
    
    FOR h IN 0..23 LOOP
      v_sk := v_sk + 1;
      INSERT INTO TB_DIM_TEMPO (
        SK_ID_TEMPO, DT_REFERENCIA, NR_ANO, NR_SEMESTRE, DS_SEMESTRE_ANO, DS_SEMESTRE,
        NR_TRIMESTRE, DS_TRIMESTRE_ANO, DS_TRIMESTRE, NR_MES, NR_ANO_MES,
        DS_MES, DS_MES_ANO, DS_ABV_MES, DS_ABV_MES_ANO,
        DS_DIA_SEMANA, DS_DATA, NR_DIA_MES, NR_DIA_SEMANA, NR_DIA_ANO,
        DS_DIA_UTIL_FERIADO, DS_FIM_SEMANA, DS_DATA_EXTENSO, NR_HORA,
        DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
      )
      VALUES (
        v_sk,
        TRUNC(v_dt) + (h/24),
        TO_NUMBER(TO_CHAR(v_dt,'YYYY')),
        v_semestre,
        TO_CHAR(v_semestre) || 'º Sem ' || TO_CHAR(v_dt,'YYYY'),  -- "2º Sem 2025" = 11 chars
        TO_CHAR(v_semestre) || 'º Semestre',  -- "2º Semestre" = 11 chars
        v_trimestre,
        TO_CHAR(v_trimestre) || 'º Tri ' || TO_CHAR(v_dt,'YYYY'),  -- "4º Tri 2025" = 11 chars
        TO_CHAR(v_trimestre) || 'º Trimestre',  -- "4º Trimestre" = 12 chars
        TO_NUMBER(TO_CHAR(v_dt,'MM')),
        TO_NUMBER(TO_CHAR(v_dt,'YYYYMM')),
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')),  -- Remove espaços extras
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')) || '/' || TO_CHAR(v_dt,'YYYY'),  -- "Novembro/2025"
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')),
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')) || ' ' || TO_CHAR(v_dt,'YYYY'),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        TO_NUMBER(TO_CHAR(v_dt,'DD')),
        TO_NUMBER(TO_CHAR(v_dt,'D')),
        TO_NUMBER(TO_CHAR(v_dt,'DDD')),
        v_dia_util,
        v_fim_semana,
        TO_CHAR(v_dt,'DD/MM/YYYY') || ' ' || LPAD(h,2,'0') || 'h',  -- "01/11/2025 00h"
        LPAD(h,2,'0') || ':00',
        SYSDATE, 'ETL_USER', 1002, SYSDATE, 10, 'A'
      );
    END LOOP;
    v_dt := v_dt + 1;
  END LOOP;
  
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Período 1 concluído: 168 registros (SK 97-264)');
END;
/

-- ========================================
-- PERÍODO 2: 08/11/2025 a 17/11/2025
-- ========================================
DECLARE
  v_dt_ini DATE := DATE '2025-11-08';
  v_dt_fim DATE := DATE '2025-11-17';
  v_dt     DATE;
  v_sk     NUMBER := 264;
  
  v_semestre NUMBER;
  v_trimestre NUMBER;
  v_fim_semana VARCHAR2(10);
  v_dia_util VARCHAR2(10);
  v_dy VARCHAR2(20);
  
BEGIN
  v_dt := v_dt_ini;
  WHILE v_dt <= v_dt_fim + 0.99999 LOOP
    
    v_semestre := CASE WHEN TO_NUMBER(TO_CHAR(v_dt,'MM')) <= 6 THEN 1 ELSE 2 END;
    v_trimestre := CEIL(TO_NUMBER(TO_CHAR(v_dt,'MM'))/3);
    v_dy := UPPER(TO_CHAR(v_dt, 'DY', 'NLS_DATE_LANGUAGE=PORTUGUESE'));
    v_fim_semana := CASE WHEN v_dy IN ('SÁB','SAB','DOM') THEN 'Sim' ELSE 'Não' END;
    v_dia_util := CASE WHEN v_fim_semana = 'Sim' THEN 'FDS' ELSE 'Útil' END;
    
    FOR h IN 0..23 LOOP
      v_sk := v_sk + 1;
      INSERT INTO TB_DIM_TEMPO (
        SK_ID_TEMPO, DT_REFERENCIA, NR_ANO, NR_SEMESTRE, DS_SEMESTRE_ANO, DS_SEMESTRE,
        NR_TRIMESTRE, DS_TRIMESTRE_ANO, DS_TRIMESTRE, NR_MES, NR_ANO_MES,
        DS_MES, DS_MES_ANO, DS_ABV_MES, DS_ABV_MES_ANO,
        DS_DIA_SEMANA, DS_DATA, NR_DIA_MES, NR_DIA_SEMANA, NR_DIA_ANO,
        DS_DIA_UTIL_FERIADO, DS_FIM_SEMANA, DS_DATA_EXTENSO, NR_HORA,
        DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
      )
      VALUES (
        v_sk,
        TRUNC(v_dt) + (h/24),
        TO_NUMBER(TO_CHAR(v_dt,'YYYY')),
        v_semestre,
        TO_CHAR(v_semestre) || 'º Sem ' || TO_CHAR(v_dt,'YYYY'),
        TO_CHAR(v_semestre) || 'º Semestre',
        v_trimestre,
        TO_CHAR(v_trimestre) || 'º Tri ' || TO_CHAR(v_dt,'YYYY'),
        TO_CHAR(v_trimestre) || 'º Trimestre',
        TO_NUMBER(TO_CHAR(v_dt,'MM')),
        TO_NUMBER(TO_CHAR(v_dt,'YYYYMM')),
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')),
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')) || '/' || TO_CHAR(v_dt,'YYYY'),
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')),
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')) || ' ' || TO_CHAR(v_dt,'YYYY'),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        TO_NUMBER(TO_CHAR(v_dt,'DD')),
        TO_NUMBER(TO_CHAR(v_dt,'D')),
        TO_NUMBER(TO_CHAR(v_dt,'DDD')),
        v_dia_util,
        v_fim_semana,
        TO_CHAR(v_dt,'DD/MM/YYYY') || ' ' || LPAD(h,2,'0') || 'h',
        LPAD(h,2,'0') || ':00',
        SYSDATE, 'ETL_USER', 1003, SYSDATE, 10, 'A'
      );
    END LOOP;
    v_dt := v_dt + 1;
  END LOOP;
  
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Período 2 concluído: 240 registros (SK 265-504)');
END;
/

-- ========================================
-- PERÍODO 3: 01/12/2025 a 10/12/2025
-- ========================================
DECLARE
  v_dt_ini DATE := DATE '2025-12-01';
  v_dt_fim DATE := DATE '2025-12-10';
  v_dt     DATE;
  v_sk     NUMBER := 504;
  
  v_semestre NUMBER;
  v_trimestre NUMBER;
  v_fim_semana VARCHAR2(10);
  v_dia_util VARCHAR2(10);
  v_dy VARCHAR2(20);
  
BEGIN
  v_dt := v_dt_ini;
  WHILE v_dt <= v_dt_fim + 0.99999 LOOP
    
    v_semestre := CASE WHEN TO_NUMBER(TO_CHAR(v_dt,'MM')) <= 6 THEN 1 ELSE 2 END;
    v_trimestre := CEIL(TO_NUMBER(TO_CHAR(v_dt,'MM'))/3);
    v_dy := UPPER(TO_CHAR(v_dt, 'DY', 'NLS_DATE_LANGUAGE=PORTUGUESE'));
    v_fim_semana := CASE WHEN v_dy IN ('SÁB','SAB','DOM') THEN 'Sim' ELSE 'Não' END;
    v_dia_util := CASE WHEN v_fim_semana = 'Sim' THEN 'FDS' ELSE 'Útil' END;
    
    FOR h IN 0..23 LOOP
      v_sk := v_sk + 1;
      INSERT INTO TB_DIM_TEMPO (
        SK_ID_TEMPO, DT_REFERENCIA, NR_ANO, NR_SEMESTRE, DS_SEMESTRE_ANO, DS_SEMESTRE,
        NR_TRIMESTRE, DS_TRIMESTRE_ANO, DS_TRIMESTRE, NR_MES, NR_ANO_MES,
        DS_MES, DS_MES_ANO, DS_ABV_MES, DS_ABV_MES_ANO,
        DS_DIA_SEMANA, DS_DATA, NR_DIA_MES, NR_DIA_SEMANA, NR_DIA_ANO,
        DS_DIA_UTIL_FERIADO, DS_FIM_SEMANA, DS_DATA_EXTENSO, NR_HORA,
        DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
      )
      VALUES (
        v_sk,
        TRUNC(v_dt) + (h/24),
        TO_NUMBER(TO_CHAR(v_dt,'YYYY')),
        v_semestre,
        TO_CHAR(v_semestre) || 'º Sem ' || TO_CHAR(v_dt,'YYYY'),
        TO_CHAR(v_semestre) || 'º Semestre',
        v_trimestre,
        TO_CHAR(v_trimestre) || 'º Tri ' || TO_CHAR(v_dt,'YYYY'),
        TO_CHAR(v_trimestre) || 'º Trimestre',
        TO_NUMBER(TO_CHAR(v_dt,'MM')),
        TO_NUMBER(TO_CHAR(v_dt,'YYYYMM')),
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')),
        RTRIM(TO_CHAR(v_dt,'Month','NLS_DATE_LANGUAGE=PORTUGUESE')) || '/' || TO_CHAR(v_dt,'YYYY'),
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')),
        UPPER(TO_CHAR(v_dt,'Mon','NLS_DATE_LANGUAGE=PORTUGUESE')) || ' ' || TO_CHAR(v_dt,'YYYY'),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        RTRIM(TO_CHAR(v_dt,'Day','NLS_DATE_LANGUAGE=PORTUGUESE')),
        TO_NUMBER(TO_CHAR(v_dt,'DD')),
        TO_NUMBER(TO_CHAR(v_dt,'D')),
        TO_NUMBER(TO_CHAR(v_dt,'DDD')),
        v_dia_util,
        v_fim_semana,
        TO_CHAR(v_dt,'DD/MM/YYYY') || ' ' || LPAD(h,2,'0') || 'h',
        LPAD(h,2,'0') || ':00',
        SYSDATE, 'ETL_USER', 1004, SYSDATE, 10, 'A'
      );
    END LOOP;
    v_dt := v_dt + 1;
  END LOOP;
  
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Período 3 concluído: 240 registros (SK 505-744)');
END;
/

-- ========================================
-- RESUMO FINAL E VALIDAÇÃO
-- ========================================
SET SERVEROUTPUT ON;

BEGIN
  DBMS_OUTPUT.PUT_LINE('========================================');
  DBMS_OUTPUT.PUT_LINE('CARGA COMPLETA!');
  DBMS_OUTPUT.PUT_LINE('========================================');
  DBMS_OUTPUT.PUT_LINE('Total de registros adicionados: 648');
  DBMS_OUTPUT.PUT_LINE('SK_ID_TEMPO: 97 até 744');
  DBMS_OUTPUT.PUT_LINE('Período: 01/11/2025 até 10/12/2025');
  DBMS_OUTPUT.PUT_LINE('========================================');
END;
/

-- Query de validação
SELECT COUNT(*) AS TOTAL_REGISTROS FROM TB_DIM_TEMPO;
SELECT MIN(DT_REFERENCIA) AS INICIO, MAX(DT_REFERENCIA) AS FIM FROM TB_DIM_TEMPO;

-- ========================================
-- AJUSTES APLICADOS
-- ========================================
-- 1. DS_TRIMESTRE_ANO: "4º Tri 2025" (11 chars) ao invés de "4º Trimestre de 2025" (21 chars)
-- 2. DS_SEMESTRE_ANO: "2º Sem 2025" (11 chars) ao invés de "2º Semestre de 2025" (20 chars)
-- 3. DS_MES_ANO: "Novembro/2025" (14 chars) ao invés de "Novembro de 2025" (16 chars)
-- 4. DS_DATA_EXTENSO: "01/11/2025 00h" (14 chars) - formato curto
-- 5. RTRIM() para remover espaços extras dos nomes de meses e dias
-- 6. Variáveis com tamanhos adequados
-- ========================================


-- ========================================
-- REGISTROS ADICIONAIS PARA TB_FATO_TRAFEGO
-- Total: 25 registros fictícios
-- ========================================
-- Combinando dados das dimensões criadas:
-- - Locais: 1-30 (diversas cidades)
-- - Clima: 1-30 (ensolarado, chuvoso, etc)
-- - Condição Pista: 1-30 (seca, molhada, etc)
-- - Radar: 1-30 (fixos e móveis)
-- - Tempo: 97-744 (novembro e dezembro 2025)
-- - Veículo: 1-30 (carros, motos, caminhões)
-- ========================================

SELECT * FROM TB_FATO_TRAFEGO

-- Registro 6: Porto Alegre, Gol, manhã, excesso de velocidade
INSERT INTO TB_FATO_TRAFEGO (
  SK_ID_COND_PISTA, SK_ID_CLIMA, SK_ID_LOCAL, SK_ID_RADAR, SK_ID_TEMPO, SK_ID_VEICULO,
  ST_VEICULO, QT_VEICULOS, VL_MULTA, ST_INFRACOES, QT_INFRACOES,
  TP_PENALIDADE_APLICADA, VL_VELOCIDADE_REGISTRADA, "VL_VELOCIDADE_PERMITIDA_KM/H",
  DT_CARGA, NM_USUARIO_CARGA, NR_LOTE_CARGA, DT_ATUALIZACAO, ID_PROCESSO_ETL, ST_REGISTRO_ATUAL
) VALUES
(6, 6, 6, 6, 105, 6, 'ATIVO', 1, 130.16, 'ATIVO', 1, 'Multa',
  72.0, 60, SYSDATE, 'ETL_USER', 2002, SYSDATE, 20, 'A');

-- Registro 7: Florianópolis, Yamaha Factor, tarde, pista molhada
INSERT INTO TB_FATO_TRAFEGO VALUES
(7, 7, 7, 7, 150, 7, 'ATIVO', 1, 195.23, 'ATIVO', 1, 'Multa',
  85.0, 70, SYSDATE, 'ETL_USER', 2002, SYSDATE, 20, 'A');

-- Registro 8: Foz do Iguaçu, Creta, noite, clima limpo
INSERT INTO TB_FATO_TRAFEGO VALUES
(8, 10, 8, 8, 200, 8, 'ATIVO', 1, 880.41, 'ATIVO', 2, 'Multa + Suspensão CNH',
  121.0, 80, SYSDATE, 'ETL_USER', 2002, SYSDATE, 20, 'A');

-- Registro 9: Bento Gonçalves, Mercedes Atego, madrugada, neblina
INSERT INTO TB_FATO_TRAFEGO VALUES
(9, 11, 9, 9, 250, 9, 'ATIVO', 1, 293.47, 'ATIVO', 1, 'Multa',
  68.0, 50, SYSDATE, 'ETL_USER', 2002, SYSDATE, 20, 'A');

-- Registro 10: Blumenau, Van Ducato inativa
INSERT INTO TB_FATO_TRAFEGO VALUES
(10, 10, 10, 10, 300, 10, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  45.0, 60, SYSDATE, 'ETL_USER', 2002, SYSDATE, 20, 'I');

-- Registro 11: Araraquara, Fiat Argo, dia ensolarado
INSERT INTO TB_FATO_TRAFEGO VALUES
(11, 17, 11, 11, 350, 11, 'ATIVO', 1, 195.23, 'ATIVO', 1, 'Multa',
  73.0, 60, SYSDATE, 'ETL_USER', 2003, SYSDATE, 20, 'A');

-- Registro 12: Juiz de Fora, Suzuki GSX, pista úmida
INSERT INTO TB_FATO_TRAFEGO VALUES
(12, 7, 12, 12, 400, 12, 'ATIVO', 1, 574.62, 'ATIVO', 2, 'Multa',
  105.0, 80, SYSDATE, 'ETL_USER', 2003, SYSDATE, 20, 'A');

-- Registro 13: Nova Friburgo, Ford Territory, tempestade
INSERT INTO TB_FATO_TRAFEGO VALUES
(13, 8, 13, 13, 450, 13, 'ATIVO', 1, 130.16, 'ATIVO', 1, 'Multa',
  62.0, 50, SYSDATE, 'ETL_USER', 2003, SYSDATE, 20, 'A');

-- Registro 14: Campinas, Scania R450 estrangeiro, pista seca
INSERT INTO TB_FATO_TRAFEGO VALUES
(14, 1, 14, 14, 500, 14, 'ATIVO', 1, 1467.00, 'ATIVO', 1, 'Multa',
  95.0, 70, SYSDATE, 'ETL_USER', 2003, SYSDATE, 20, 'A');

-- Registro 15: Vila Velha, Renault Kwid inativo
INSERT INTO TB_FATO_TRAFEGO VALUES
(15, 15, 15, 15, 550, 15, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  50.0, 60, SYSDATE, 'ETL_USER', 2003, SYSDATE, 20, 'I');

-- Registro 16: Recife, BMW 320i, onda de calor
INSERT INTO TB_FATO_TRAFEGO VALUES
(16, 17, 16, 16, 600, 16, 'ATIVO', 1, 880.41, 'ATIVO', 2, 'Multa + Pontos CNH',
  98.0, 70, SYSDATE, 'ETL_USER', 2004, SYSDATE, 20, 'A');

-- Registro 17: Salvador, Kawasaki Ninja, clima agradável
INSERT INTO TB_FATO_TRAFEGO VALUES
(17, 30, 17, 17, 650, 17, 'ATIVO', 1, 293.47, 'ATIVO', 1, 'Multa',
  82.0, 70, SYSDATE, 'ETL_USER', 2004, SYSDATE, 20, 'A');

-- Registro 18: Recife (outro local), Hilux, chuva leve
INSERT INTO TB_FATO_TRAFEGO VALUES
(18, 26, 18, 18, 700, 18, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  55.0, 60, SYSDATE, 'ETL_USER', 2004, SYSDATE, 20, 'I');

-- Registro 19: São Luís, Ônibus Viale, pista irregular
INSERT INTO TB_FATO_TRAFEGO VALUES
(19, 24, 19, 19, 110, 19, 'ATIVO', 1, 195.23, 'ATIVO', 1, 'Multa',
  68.0, 60, SYSDATE, 'ETL_USER', 2004, SYSDATE, 20, 'A');

-- Registro 20: João Pessoa, Caminhão Iveco estrangeiro
INSERT INTO TB_FATO_TRAFEGO VALUES
(20, 20, 20, 20, 160, 20, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  70.0, 80, SYSDATE, 'ETL_USER', 2004, SYSDATE, 20, 'I');

-- Registro 21: Brasília, Nissan Kicks, céu limpo
INSERT INTO TB_FATO_TRAFEGO VALUES
(21, 10, 21, 21, 210, 21, 'ATIVO', 1, 574.62, 'ATIVO', 2, 'Multa',
  92.0, 70, SYSDATE, 'ETL_USER', 2005, SYSDATE, 20, 'A');

-- Registro 22: Cuiabá, BMW G310, calor extremo
INSERT INTO TB_FATO_TRAFEGO VALUES
(22, 22, 22, 22, 260, 22, 'ATIVO', 1, 195.23, 'ATIVO', 1, 'Multa',
  77.0, 60, SYSDATE, 'ETL_USER', 2005, SYSDATE, 20, 'A');

-- Registro 23: Goiânia, VW Tiguan estrangeiro, seca
INSERT INTO TB_FATO_TRAFEGO VALUES
(23, 22, 23, 23, 310, 23, 'ATIVO', 1, 1467.00, 'ATIVO', 1, 'Multa Gravíssima',
  138.0, 100, SYSDATE, 'ETL_USER', 2005, SYSDATE, 20, 'A');

-- Registro 24: Manaus, Peugeot 208, brisa leve
INSERT INTO TB_FATO_TRAFEGO VALUES
(24, 23, 24, 24, 360, 24, 'ATIVO', 1, 293.47, 'ATIVO', 1, 'Multa',
  88.0, 80, SYSDATE, 'ETL_USER', 2005, SYSDATE, 20, 'A');

-- Registro 25: Belém, Van Master inativa
INSERT INTO TB_FATO_TRAFEGO VALUES
(25, 25, 25, 25, 410, 25, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  60.0, 80, SYSDATE, 'ETL_USER', 2005, SYSDATE, 20, 'I');

-- Registro 26: Juiz de Fora, Tracker, céu parcialmente coberto
INSERT INTO TB_FATO_TRAFEGO VALUES
(26, 27, 26, 26, 460, 26, 'ATIVO', 1, 880.41, 'ATIVO', 2, 'Multa + Advertência',
  115.0, 90, SYSDATE, 'ETL_USER', 2006, SYSDATE, 20, 'A');

-- Registro 27: Porto Alegre (outro ponto), Honda CB 500F, ventania
INSERT INTO TB_FATO_TRAFEGO VALUES
(27, 28, 27, 27, 510, 27, 'ATIVO', 1, 574.62, 'ATIVO', 2, 'Multa',
  103.0, 80, SYSDATE, 'ETL_USER', 2006, SYSDATE, 20, 'A');

-- Registro 28: Campo Grande, Jeep Renegade, clima agradável
INSERT INTO TB_FATO_TRAFEGO VALUES
(28, 30, 28, 28, 560, 28, 'ATIVO', 1, 195.23, 'ATIVO', 1, 'Multa',
  76.0, 60, SYSDATE, 'ETL_USER', 2006, SYSDATE, 20, 'A');

-- Registro 29: Curitiba, VW Constellation estrangeiro, pista seca
INSERT INTO TB_FATO_TRAFEGO VALUES
(29, 1, 29, 29, 610, 29, 'ATIVO', 1, 1954.00, 'ATIVO', 1, 'Multa Gravíssima',
  82.0, 60, SYSDATE, 'ETL_USER', 2006, SYSDATE, 20, 'A');

-- Registro 30: Gramado, HB20, clima ameno
INSERT INTO TB_FATO_TRAFEGO VALUES
(30, 16, 30, 30, 660, 30, 'INATIVO', 1, 0.00, 'INATIVO', 0, '—',
  40.0, 50, SYSDATE, 'ETL_USER', 2006, SYSDATE, 20, 'I');

COMMIT;

-- ========================================
-- RESUMO DOS REGISTROS
-- ========================================
-- Total de registros adicionados: 25
-- Lotes: 2002, 2003, 2004, 2005, 2006
-- 
-- Distribuição:
-- - Status ATIVO: 20 registros (80%)
-- - Status INATIVO: 5 registros (20%)
-- 
-- Tipos de Infrações:
-- - Multa simples: 13 registros
-- - Multa + Suspensão CNH: 1 registro
-- - Multa + Pontos CNH: 1 registro
-- - Multa + Advertência: 1 registro
-- - Multa Gravíssima: 2 registros
-- - Sem infração (inativos): 5 registros
-- 
-- Valores de Multa:
-- - R$ 0,00 (inativos): 5 registros
-- - R$ 130,16 a R$ 293,47 (leves): 9 registros
-- - R$ 574,62 a R$ 880,41 (médias): 6 registros
-- - R$ 1.467,00 a R$ 1.954,00 (graves): 3 registros
-- 
-- Velocidades Registradas:
-- - 40 a 88 km/h (dentro ou pouco acima): 15 registros
-- - 92 a 121 km/h (excesso moderado): 7 registros
-- - 138 km/h (excesso grave): 1 registro
-- 
-- Limites de Via:
-- - 50 km/h: 4 registros
-- - 60 km/h: 10 registros
-- - 70 km/h: 5 registros
-- - 80 km/h: 5 registros
-- - 90 km/h: 1 registro
-- - 100 km/h: 1 registro
-- 
-- Cobertura Geográfica:
-- - Sul: 6 registros (RS, SC, PR)
-- - Sudeste: 6 registros (SP, MG, RJ, ES)
-- - Nordeste: 6 registros (PE, BA, MA, PB)
-- - Centro-Oeste: 4 registros (DF, MT, GO, MS)
-- - Norte: 2 registros (AM, PA)
-- 
-- Tipos de Veículos:
-- - Carros: 13 registros
-- - Motos: 4 registros
-- - SUVs: 4 registros
-- - Caminhões: 3 registros
-- - Ônibus: 1 registro
-- - Vans: 2 registros
-- 
-- Horários (SK_ID_TEMPO):
-- Distribuído entre 105 e 660
-- Cobrindo diferentes horas do dia
-- ========================================

-- ========================================
-- QUERIES DE VALIDAÇÃO
-- ========================================

-- Total de registros na fato
SELECT COUNT(*) AS TOTAL_REGISTROS FROM TB_FATO_TRAFEGO;

-- Infrações por cidade
SELECT l.NM_CIDADE, COUNT(*) AS QTD_INFRACOES, SUM(f.VL_MULTA) AS TOTAL_MULTAS
FROM TB_FATO_TRAFEGO f
JOIN TB_DIM_LOCAL l ON f.SK_ID_LOCAL = l.SK_ID_LOCAL
WHERE f.ST_INFRACOES = 'ATIVO'
GROUP BY l.NM_CIDADE
ORDER BY TOTAL_MULTAS DESC;

-- Infrações por tipo de veículo
SELECT v.DS_VEICULO, COUNT(*) AS QTD_INFRACOES, AVG(f.VL_VELOCIDADE_REGISTRADA) AS VEL_MEDIA
FROM TB_FATO_TRAFEGO f
JOIN TB_DIM_VEICULO v ON f.SK_ID_VEICULO = v.SK_ID_VEICULO
WHERE f.ST_INFRACOES = 'ATIVO'
GROUP BY v.DS_VEICULO
ORDER BY QTD_INFRACOES DESC;

-- Infrações por condição climática
SELECT c.DS_CLIMA, COUNT(*) AS QTD_INFRACOES, AVG(f.VL_MULTA) AS MULTA_MEDIA
FROM TB_FATO_TRAFEGO f
JOIN TB_DIM_CLIMA c ON f.SK_ID_CLIMA = c.SK_ID_CLIMA
WHERE f.ST_INFRACOES = 'ATIVO'
GROUP BY c.DS_CLIMA
ORDER BY QTD_INFRACOES DESC;

-- Radar que mais multou
SELECT r.NR_RADAR, r.NM_FABRICANTE, r.TP_RADAR, 
       COUNT(*) AS QTD_MULTAS, SUM(f.VL_MULTA) AS TOTAL_ARRECADADO
FROM TB_FATO_TRAFEGO f
JOIN TB_DIM_RADAR r ON f.SK_ID_RADAR = r.SK_ID_RADAR
WHERE f.ST_INFRACOES = 'ATIVO'
GROUP BY r.NR_RADAR, r.NM_FABRICANTE, r.TP_RADAR
ORDER BY TOTAL_ARRECADADO DESC;

-- ========================================
-- FIM
-- ========================================