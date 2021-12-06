USE bdEscola

/*a) Criar uma consulta que retorne o nome e o preço dos cursos que custem
	abaixo do valor médio*/​
SELECT nomeCurso, valorCurso FROM tbCurso
WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

/*b) Criar uma consulta que retorne o nome e o rg do aluno mais novo​*/​
SELECT nomeAluno, rgAluno FROM tbAluno
WHERE dataNascimentoAluno = (SELECT MIN(dataNascimentoAluno) FROM tbAluno)

/*c) Criar uma consulta que retorne o nome do aluno mais velho​​*/​
SELECT nomeAluno FROM tbAluno
WHERE dataNascimentoAluno = (SELECT MAX(dataNascimentoAluno) FROM tbAluno)

/*d) Criar uma consulta que retorne o nome e o valor do curso mais caro​​*/​
SELECT nomeCurso,valorCurso FROM tbCurso
WHERE valorCurso = (SELECT MAX(valorCurso) FROM tbCurso)

/*e) Criar uma consulta que retorne o nome do aluno e o nome do curso,
	do aluno que fez a última matrícula​*/​
SELECT nomeAluno,nomeCurso FROM tbAluno
WHERE codAluno = (SELECT MAX(codAluno) FROM tbMatricula)

/*f) Criar uma consulta que retorne o nome do primeiro aluno a ser
	matriculado na escola de Idiomas​*/​
SELECT nomeAluno,codAluno FROM tbAluno
WHERE codAluno = (SELECT MIN(codAluno) FROM tbMatricula)

/*g) Criar uma consulta que retorne o nome, rg e data de nascimento
	de todos os alunos que estejam matriculados no curso de inglês​​*/​

/* Sei não kkkkkkkk não dá pra fazer tudo pelo bloco de notas*/