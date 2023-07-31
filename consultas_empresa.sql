-- Database: Exercicios

-- DROP DATABASE IF EXISTS "Exercicios";

-- a)
SELECT Datanasc, Endereco
FROM funcionario
WHERE Unome = 'Silva' AND Pnome = 'João' AND Minicial = 'B';

-- b)
SELECT Cpf
FROM funcionario;

-- c)
SELECT funcionario.Cpf, departamento.Dnome
FROM funcionario
INNER JOIN departamento ON funcionario.Dnr = departamento.Dnumero;

-- d)
SELECT DISTINCT Salario
FROM funcionario;

-- e)
SELECT SUM(Salario) AS Valor_Total_Salarios
FROM funcionario;

-- f)
SELECT DISTINCT Pnr
FROM trabalha_em
INNER JOIN funcionario ON trabalha_em.Fcpf = funcionario.Cpf
WHERE funcionario.Unome = 'Silva';

-- g)
SELECT *
FROM funcionario
WHERE Endereco LIKE '%São Paulo, SP%';

-- h)
SELECT *
FROM funcionario
WHERE Datanasc >= '1960-01-01';

-- i)
SELECT MIN(Horas) AS Menor_Hora
FROM trabalha_em;

-- j)
SELECT funcionario.Pnome, funcionario.Endereco
FROM funcionario
INNER JOIN departamento ON funcionario.Dnr = departamento.Dnumero
WHERE departamento.Dnome = 'Pesquisa';

-- k)
SELECT projeto.Projnumero, projeto.Dnum, funcionario.Unome, funcionario.Endereco, funcionario.Datanasc
FROM projeto
INNER JOIN departamento ON projeto.Dnum = departamento.Dnumero
INNER JOIN funcionario ON departamento.Cpf_gerente = funcionario.Cpf
WHERE projeto.Projlocal = 'Mauá';

-- l)
SELECT funcionario.Pnome, funcionario.Unome
FROM funcionario
INNER JOIN trabalha_em ON funcionario.Cpf = trabalha_em.Fcpf
INNER JOIN projeto ON trabalha_em.Pnr = projeto.Projnumero
WHERE funcionario.Dnr = 5 AND projeto.Projnome = 'ProdutoX' AND trabalha_em.Horas > 10;


