CREATE DATABASE bdTransito

USE bdTransito

CREATE TABLE tbMotorista(
 idMotorista INT PRIMARY KEY IDENTITY(1,1)
 , nomeMotorista VARCHAR(100) NOT NULL
 , dataNascMotorista SMALLDATETIME NOT NULL
 , cpfMotorista CHAR(12) NOT NULL UNIQUE 
 , CNHMotorista CHAR(15) NOT NULL UNIQUE
 , pontuacaoAcumulada INT NOT NULL
)

CREATE TABLE tbVeiculo(
 idVeiculo INT PRIMARY KEY IDENTITY(1,1)
 , modeloVeiculo VARCHAR(60) NOT NULL
 , placa CHAR(7) NOT NULL UNIQUE
 , renavam CHAR(11) NOT NULL UNIQUE
 , anoVeiculo SMALLDATETIME NOT NULL
 , idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista)
)

CREATE TABLE tbMultas(
 idMultas INT PRIMARY KEY IDENTITY(1,1)
 , dataMulta SMALLDATETIME NOT NULL
 , horaMulta DATE NOT NULL 
 , pontosMulta INT NOT NULL
 , idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo)
)