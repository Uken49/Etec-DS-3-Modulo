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

-- d) Quantos motoristas possuem mais de 10 pontos de pontua��o acumulada
SELECT COUNT (idMotorista) as 'Motoristas' FROM tbMotorista
WHERE pontuacaoAcumulada > 10 

-- e) A somat�ria da pontua��o de todos os motoristas
SELECT SUM (pontuacaoAcumulada) as 'Somat�ria da pontua��o de todos os motoristas' FROM tbMotorista

-- f) A m�dia de pontua��o de todos os motoristas
SELECT AVG (pontuacaoAcumulada) as 'M�dia de pontua��es' FROM tbMotorista

-- g) Quantos ve�culos o motorista de c�digo 1 possui
SELECT COUNT (idMotorista) as 'Motorista', (idVeiculo) as 'Quantidade de ve�culos' FROM tbVeiculo
WHERE idMotorista = 1 
GROUP BY idVeiculo

-- h) Quantos ve�culos a placa come�a com A 
SELECT COUNT (placa) as 'Placa' FROM tbVeiculo
WHERE placa LIKE 'A%' 

-- i) Quantos ve�culos foram fabricados antes de 2010 
SELECT COUNT (idVeiculo) as 'Quantidade de ve�culos fabricados antes de 2010' FROM tbVeiculo
WHERE anoVeiculo > 2010

-- j) A m�dia do ano de fabrica��o de todos os ve�culos
SELECT AVG (anoVeiculo) as 'M�dia do ano de fabrica��o de todos os ve�culos' FROM tbVeiculo

-- k) A quantidade dos ve�culos que tenham a palavra Sedan em seu modelo
SELECT COUNT (idVeiculo) as 'Quantidade de ve�culos do modelo Sedan' FROM tbVeiculo
WHERE modeloVeiculo LIKE '% Sedan %'

-- l) A somat�ria dos pontosMulta do ve�culo de id 02
SELECT SUM (idMultas) as 'Somat�ria dos pontos' FROM tbMultas
WHERE idVeiculo = 2

-- m) A m�dia de pontosMulta entre todas as multas aplicadas
SELECT AVG (pontosMulta) as 'Somat�ria dos pontos' FROM tbMultas

-- n) A quantidade de multas aplicadas no m�s de abril de 2018
SELECT dataMulta, CONVERT(VARCHAR(10), dataMulta,103) FROM tbMultas
WHERE MONTH (dataMulta) = 04 AND YEAR (dataMulta) = 2018

-- o) A quantidade de ve�culos cuja placa termine com o n�mero 1 ou 2
SELECT COUNT (idVeiculo) as 'Total de Placas com final 1 ou 2' FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'

-- p) A quantidade de ve�culos cuja placa termine com o n�mero 3 ou 4
SELECT COUNT (idVeiculo) as 'Total de Placas com final 3 ou 4' FROM tbVeiculo
WHERE placa LIKE '%3' OR placa LIKE '%4'

-- q) A quantidade de ve�culos cuja placa termine com o n�mero 5 ou 6
SELECT COUNT (idVeiculo) as 'Total de Placas com final 5 ou 6' FROM tbVeiculo
WHERE placa LIKE '%5' OR placa LIKE '%6'

-- r) A quantidade de ve�culos cuja placa termine com o n�mero 7 ou 8
SELECT COUNT (idVeiculo) as 'Total de Placas com final 7 ou 8' FROM tbVeiculo
WHERE placa LIKE '%7' OR placa LIKE '%8'

-- s) A quantidade de ve�culos cuja placa termine com o n�mero 9 ou 0
SELECT COUNT (idVeiculo) as 'Total de Placas com final 9 ou 0' FROM tbVeiculo
WHERE placa LIKE '%9' OR placa LIKE '%0'

-- t) A quantidade de ve�culos por ano de fabrica��o
SELECT COUNT(idVeiculo) as 'Quantidade de ve�culos por ano', (anoVeiculo) as 'Ano' FROM tbVeiculo
GROUP BY anoVeiculo
ORDER BY anoVeiculo 

-- u) A quantidade de motoristas por pontua��o acumulada
SELECT COUNT(idMotorista) as 'Quantidade de Motoristas com mais de 20 pontos', (pontuacaoAcumulada) as 'Pontua��o' FROM tbMotorista
GROUP BY pontuacaoAcumulada
ORDER BY pontuacaoAcumulada 

-- v) A quantidade de motoristas que ultrapassaram os 20 pontos
SELECT COUNT(idMotorista) as 'Quantidade de Motoristas com mais de 20 pontos' FROM tbMotorista
WHERE pontuacaoAcumulada > 20

-- w) A pontua��o m�dia dos motoristas nascidos no ano de 2000
SELECT AVG (pontuacaoAcumulada) as 'M�dia Pontua��o', (dataNascMotorista) FROM tbMotorista
WHERE YEAR (dataNascMotorista) = 2000
GROUP BY pontuacaoAcumulada, dataNascMotorista
ORDER BY dataNascMotorista

-- x) A m�dia dos pontos  das multas aplicadas em julho de 2017
SELECT AVG (pontosMulta) as 'M�dia Pontua��o', (dataMulta) FROM tbMultas
WHERE MONTH (dataMulta) = 06 AND YEAR (dataMulta) = 2017
GROUP BY pontosMulta, dataMulta
ORDER BY dataMulta

-- y) Quantos ve�culos n�o podem circular na segunda-feira (placa final 1 ou 2)
SELECT COUNT (idVeiculo) as 'Quantidade de ve�culos que n�o podem circular na segunda', (placa) as 'placa final 1 ou 2' FROM tbVeiculo
WHERE placa LIKE '%1' OR placa LIKE '%2'
GROUP BY placa, idVeiculo
