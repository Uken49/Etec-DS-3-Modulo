go
use bdEscola

insert into tbCurso (nomeCurso, cargaHorariaCurso, valorCurso)
values
('Inglês', 2000, 356)
,('Alemão', 3000, 478)
,('Alemão', 4000, 500)

select * from tbCurso

insert into tbTurma (nomeTurma, codCurso, horarioTurma)
values
('1IA', 1,  '12:00:00')
,('1IC', 3, '18:00:00')
,('1IB', 1, '18:00:00')
,('1AA', 2, '19:00:00')

select * from tbTurma

insert into tbAluno (nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
values
('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP')
,('Maria da Gloria', '10/03/1999', '45.223.123-0', 'SP')
,('Perla Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP')
,('Gilson Barros Silva', '09/09/1995', '34.221.111-x', 'PE')
,('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')
,('Alessandro Pereira', '11/10/2003', '24.402.454-9', 'ES')
,('Aline Melo', '08/10/2001', '88.365.012-3', 'RJ')

select * from tbAluno

insert into tbMatricula (dataMatricula, codAluno, codTurma)
values
('10/03/2015', 1, 1)
,('05/04/2014', 2, 1)
,('05/03/2012', 3, 2)
,('03/03/2016', 1, 3)
,('05/07/2015', 4, 2)
,('07/05/2015', 4, 3)

