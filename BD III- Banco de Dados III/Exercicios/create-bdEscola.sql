create database bdEscola
go 
use bdEscola 

create table tbAluno(
codAluno int primary key identity(1,1)not null
,nomeAluno varchar(50) not null
,dataNascimentoAluno date
,rgAluno char (12) not null
,naturalidadeAluno char(2)
)

create table tbCurso (
codCurso int primary key identity(1,1)not null
,nomeCurso varchar (30)
,cargaHorariaCurso varchar (4)
,valorCurso money
)

create table tbTurma(
codTurma int primary key identity(1,1)not null
,nomeTurma varchar (10)
,codCurso int foreign key references tbCurso (codCurso)
,horarioTurma smalldatetime
)

create table tbMatricula(
codMatricula int primary key identity(1,1)not null
,dataMatricula smalldatetime
,codAluno int foreign key references tbAluno (codAluno)
,codTurma int foreign key references tbTurma (codTurma)
)
