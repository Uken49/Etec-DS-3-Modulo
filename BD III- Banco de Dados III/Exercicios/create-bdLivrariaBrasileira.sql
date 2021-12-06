CREATE DATABASE bdLivrariaBrasileira

USE bdLivrariaBrasileira

CREATE TABLE tbAutor(
	codAutor INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,nomeAutor VARCHAR(50) NOT NULL
)

CREATE TABLE tbEditora(
	codEditora INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,nomeEditora VARCHAR(50) NOT NULL
)

CREATE TABLE tbGenero(
	codGenero INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,nomeGenero VARCHAR(50) NOT NULL
)

CREATE TABLE tbLivro(
	codLivro INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,nomeLivro VARCHAR(50) NOT NULL
	,numPaginas VARCHAR(3) NOT NULL
	,codGenero INT FOREIGN KEY REFERENCES tbGenero (codGenero)
	,codAutor INT FOREIGN KEY REFERENCES tbAutor (codAutor)
	,codEditora INT FOREIGN KEY REFERENCES tbEditora (codEditora)
)