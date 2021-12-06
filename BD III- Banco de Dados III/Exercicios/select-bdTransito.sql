USE bdTransito

-- a) Quantos motoristas existem no banco de dados
SELECT COUNT (idMotorista) as 'Motoristas' FROM tbMotorista
WHERE idMotorista LIKE '%'

-- b) Quantos motoristas possuem Silva no sobrenome
SELECT COUNT (nomeMotorista) as 'Motoristas' FROM tbMotorista
WHERE nomeMotorista LIKE '% Silva'

-- c) Quantos motoristas nasceram no ano 2000
SELECT dataNascMotorista, CONVERT(VARCHAR(10), dataNascMotorista,103) FROM tbMotorista
WHERE YEAR (dataNascMotorista) = 2000

-- d) Quantos motoristas possuem mais de 10 pontos de pontuação acumulada
SELECT COUNT (idMotorista) as 'Motoristas' FROM tbMotorista
WHERE pontuacaoAcumulada > 10 

-- e) A somatória da pontuação de todos os motoristas
SELECT SUM (pontuacaoAcumulada) as 'Somatória da pontuação de todos os motoristas' FROM tbMotorista

-- f) A média de pontuação de todos os motoristas
SELECT AVG (pontuacaoAcumulada) as 'Média de pontuações' FROM tbMotorista

-- g) Quantos veículos o motorista de código 1 possui
SELECT COUNT (idMotorista) as 'Motorista', (idVeiculo) as 'Quantidade de veículos' FROM tbVeiculo
WHERE idMotorista = 1 
GROUP BY idVeiculo

-- h) Quantos veículos a placa começa com A 
SELECT COUNT (placa) as 'Placa' FROM tbVeiculo
WHERE placa LIKE 'A%' 

-- i) Quantos veículos foram fabricados antes de 2010 
SELECT COUNT (idVeiculo) as 'Quantidade de veículos fabricados antes de 2010' FROM tbVeiculo
WHERE anoVeiculo > 2010

-- j) A média do ano de fabricação de todos os veículos
SELECT AVG (anoVeiculo) as 'Média do ano de fabricação de todos os veículos' FROM tbVeiculo

-- k) A quantidade dos veículos que tenham a palavra Sedan em seu modelo
SELECT COUNT (idVeiculo) as 'Quantidade de veículos do modelo Sedan' FROM tbVeiculo
WHERE modeloVeiculo LIKE '% Sedan %'

-- l) A somatória dos pontosMulta do veículo de id 02
SELECT SUM (idMultas) as 'Somatória dos pontos' FROM tbMultas
WHERE idVeiculo = 2

-- m) A média de pontosMulta entre todas as multas aplicadas
SELECT AVG (pontosMulta) as 'Somatória dos pontos' FROM tbMultas

-- n) A quantidade de multas aplicadas no mês de abril de 2018
SELECT dataMulta, CONVERT(VARCHAR(10), dataMulta,103) FROM tbMultas
WHERE MONTH (dataMulta) = 04 AND YEAR (dataMulta) = 2018

-- o) A quantidade de veículos cuja placa termine com o número 1 ou 2
SELECT COUNT (idVeiculo) as 'Total de Placas com final 1 ou 2' FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'

-- p) A quantidade de veículos cuja placa termine com o número 3 ou 4
SELECT COUNT (idVeiculo) as 'Total de Placas com final 3 ou 4' FROM tbVeiculo
WHERE placa LIKE '%3' OR placa LIKE '%4'

-- q) A quantidade de veículos cuja placa termine com o número 5 ou 6
SELECT COUNT (idVeiculo) as 'Total de Placas com final 5 ou 6' FROM tbVeiculo
WHERE placa LIKE '%5' OR placa LIKE '%6'

-- r) A quantidade de veículos cuja placa termine com o número 7 ou 8
SELECT COUNT (idVeiculo) as 'Total de Placas com final 7 ou 8' FROM tbVeiculo
WHERE placa LIKE '%7' OR placa LIKE '%8'

-- s) A quantidade de veículos cuja placa termine com o número 9 ou 0
SELECT COUNT (idVeiculo) as 'Total de Placas com final 9 ou 0' FROM tbVeiculo
WHERE placa LIKE '%9' OR placa LIKE '%0'

-- t) A quantidade de veículos por ano de fabricação
SELECT COUNT(idVeiculo) as 'Quantidade de veículos por ano', (anoVeiculo) as 'Ano' FROM tbVeiculo
GROUP BY anoVeiculo
ORDER BY anoVeiculo 

-- u) A quantidade de motoristas por pontuação acumulada
SELECT COUNT(idMotorista) as 'Quantidade de Motoristas com mais de 20 pontos', (pontuacaoAcumulada) as 'Pontuação' FROM tbMotorista
GROUP BY pontuacaoAcumulada
ORDER BY pontuacaoAcumulada 

-- v) A quantidade de motoristas que ultrapassaram os 20 pontos
SELECT COUNT(idMotorista) as 'Quantidade de Motoristas com mais de 20 pontos' FROM tbMotorista
WHERE pontuacaoAcumulada > 20

-- w) A pontuação média dos motoristas nascidos no ano de 2000
SELECT AVG (pontuacaoAcumulada) as 'Média Pontuação', (dataNascMotorista) FROM tbMotorista
WHERE YEAR (dataNascMotorista) = 2000
GROUP BY pontuacaoAcumulada, dataNascMotorista
ORDER BY dataNascMotorista

-- x) A média dos pontos  das multas aplicadas em julho de 2017
SELECT AVG (pontosMulta) as 'Média Pontuação', (dataMulta) FROM tbMultas
WHERE MONTH (dataMulta) = 06 AND YEAR (dataMulta) = 2017
GROUP BY pontosMulta, dataMulta
ORDER BY dataMulta

-- y) Quantos veículos não podem circular na segunda-feira (placa final 1 ou 2)
SELECT COUNT (idVeiculo) as 'Quantidade de veículos que não podem circular na segunda', (placa) as 'placa final 1 ou 2' FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'
GROUP BY placa, idVeiculo
