-- Indicadores de Solidez do sistema Bancário/Banking System Solidity Indicators. source: https://www.bancobai.ao/media/3770/relato-rio-de-conjuntura-econo-mica_anual.pdf --

CREATE DATABASE IndicadoresSolidezAngola;

CREATE TABLE AdequacaodeCapital(
indicador VARCHAR (50) PRIMARY KEY,
[dez.20] REAL,
[dez.21] REAL,
var REAL);


SELECT * FROM AdequacaodeCapital;

INSERT INTO AdequacaodeCapital (indicador, [dez.20],[dez.21], var)
VALUES 
('solvabilidade', 22.77, 23.79, 1.02),
('Activos Ponderados', 17.13, 20.63, 3.50);

CREATE TABLE QualidadedosActivos (
indicador VARCHAR (50),
[dez.20] REAL,
[dez.21] REAL);

SELECT * FROM QualidadedosActivos;

ALTER TABLE QualidadedosActivos
ADD var REAL;

INSERT INTO QualidadedosActivos (indicador, [dez.20], [dez.21], var)
VALUES
('CreditoME', 30.34, 21.34, -8.60),
('CreditoVencido', 18.41, 20.26, 1.85),
('CreditoVencidoIsentodeProvisoes', -38.25, -32.92, -5.33)
;

SELECT indicador, var FROM QualidadedosActivos WHERE var > 0;

CREATE TABLE LucroeRentabilidade (
indicador VARCHAR (50),
[dez.20] REAL,
[dez.21] REAL, var REAL);

SELECT * FROM LucroeRentabilidade;

INSERT INTO LucroeRentabilidade (indicador, [dez.20], [dez.21], var)
VALUES 
('ROA', -2.91, 2.21, 5.12),
('ROE',-29.79, 26.73, -3.06),
('CustosTotais', 121.51, 81.29, -40.22),
('Cost-to-Income', 132.27, 74.26, -58.01),
('MargemFinanceira', 168.28, 91, -77.28);

CREATE TABLE Liquidez(
indicador VARCHAR (50),
[dez.20] REAL,
[dez.21] REAL, var REAL);

INSERT INTO Liquidez (indicador, [dez.20], [dez.21], var)
VALUES
('ActivosTotais', 30.07, 35.76, 5.69),
('PassivosdeCurtoPrazo', 35.79, 43.61, 7.82),
('DepositosTotais', 32.72, 35.87, 3.15), 
('PassivoTotal', 54.16, 45.54, -8.62);
SELECT * FROM Liquidez;

CREATE TABLE SensibilidadedoMercado (
indicador VARCHAR (50),
[dez.20] REAL,
[dez.21] REAL, var REAL);

SELECT * FROM SensibilidadedoMercado;
INSERT INTO SensibilidadedoMercado (indicador, [dez.20], [dez.21], var)
VALUES
('Exposicao Cambial Aberta Liquida/Fundos Proprios', 32.58, 39.56, 6.98);























