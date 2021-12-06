USE bdEscola

--1) Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno as 'Nome do Aluno', nomeCurso as 'Curso' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso


--2) Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT COUNT (tbAluno.codAluno) as 'Qtd. de Alunos', nomeCurso as 'Curso' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso
GROUP BY nomeCurso

--3) Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT COUNT (tbAluno.codAluno) as 'Qtd. de Alunos',nomeTurma as 'Turma' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
GROUP BY nomeTurma

--4) Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
SELECT COUNT (tbAluno.codAluno) as 'Qtd. de Alunos',dataMatricula FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
WHERE YEAR(dataMatricula)= 2016
GROUP BY dataMatricula

--5) Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes
--dos cursos em que estão matriculados;
SELECT nomeAluno as 'Nome Aluno',nomeTurma as 'Nome Turma',nomeCurso as 'Nome Curso' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso
ORDER BY nomeAluno ASC

--6) Apresentar o nome dos cursos e os horários em que eles são oferecidos;
SELECT nomeCurso as 'Nome Curso',horarioTurma as 'Horários' FROM tbCurso
inner join tbTurma on tbTurma.codCurso = tbCurso.codCurso 
ORDER BY nomeCurso
--Não sei apresentar hora

--7) Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de ingles;
SELECT COUNT(tbAluno.codAluno) as 'Qtd. Aluno',naturalidadeAluno as 'Naturalidade Aluno' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso
WHERE nomeCurso LIKE 'Inglês'
GROUP BY naturalidadeAluno

--8) Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa;
SELECT nomeAluno as 'Nome Aluno', dataMatricula as 'Data da Matricula' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
WHERE 
GROUP BY naturalidadeAluno

--9) Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês;
SELECT nomeAluno as 'Nome Aluno',nomeCurso as 'Nome Curso' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbTurma.codTurma = tbMatricula.codTurma
inner join tbCurso on tbCurso.codCurso = tbTurma.codCurso
WHERE nomeCurso LIKE 'Inglês' AND nomeAluno LIKE 'A%'
--Não tem aluno com A

--10) Apresentar a quantidade de matriculas feitas no ano de 2016;
SELECT COUNT codMatricula as 'Qtd. de Matricula',dataMatricula FROM tbMatricula
WHERE YEAR(dataMatricula)= 2016
GROUP BY dataMatricula

--11) Apresentar a quantidade de matriculas por nome do curso;
SELECT COUNT codMatricula as 'Qtd. de Matricula',nomeCurso FROM tbMatricula
inner join tbTurma on tbTurma.codTurma = tbMatricula.codTurma
inner join tbCurso on tbCurso.codCurso = tbTurma.codCurso
ORDER BY nomeCurso

--12) Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$ 300,00;
SELECT COUNT (tbAluno.codAluno),valorCusto FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso
WHERE valorCusto >= 300
ORDER BY valorCusto

--13) Apresentar os nomes dos alunos que fazem o curso de alemão.
SELECT nomeAluno as 'Nome do Aluno', nomeCurso as 'Curso' FROM tbAluno
inner join tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
inner join tbTurma on tbMatricula.codTurma = tbTurma.codTurma
inner join tbCurso on tbTurma.codCurso = tbCurso.codCurso
WHERE nomeCurso LIKE 'Alemão'