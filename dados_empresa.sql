-- Database: Exercicios

-- DROP DATABASE IF EXISTS "Exercicios";

CREATE TABLE funcionario(
	Pnome varchar(20),
	Minicial varchar(10),
	Unome varchar(20),
	Cpf BIGINT,
	Datanasc date,
	Endereco varchar(50),
	Sexo varchar(2) CHECK(sexo in ('M', 'F')),
	Salario Integer,
	Cpf_superviso BIGINT,
	Dnr Integer
	
);

INSERT INTO funcionario(Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_superviso, Dnr)
VALUES ('João', 'B', 'Silva', 12345678966, '09-01-1965', 'Rua das Flores, 751, São Paulo, SP', 'M', 40000, 33344455587,5);

INSERT INTO funcionario(Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_superviso, Dnr)
VALUES ('Fernando', 'T', 'Wong', 33344555587, '08-12-1955', 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000, 88866555576,5);

INSERT INTO funcionario(Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_superviso, Dnr)
VALUES ('Alice', 'J', 'Zelaya',98765432167, '19-01-1968', 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000, 98765432176,4);

INSERT INTO funcionario(Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_superviso, Dnr)
VALUES ('Jennifer', 'S', 'Souza', 99988777767, '20-06-1972', 'Av. Arthur de Lima, 54, Santo André, SP', 'F', 43000, 88866555587,1);

CREATE TABLE departamento(
	Dnome varchar(20),
	Dnumero Integer,
	Cpf_gerente BIGINT,
	Data_inicio_gerente date
);

INSERT INTO departamento(Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES('Pesquisa', 5, 3334455587, '22-05-1988');

INSERT INTO departamento(Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES('Administração', 4, 98765432168, '01-01-1995');

INSERT INTO departamento(Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES('Matriz', 1, 88866555576, '19-06-1981');

CREATE TABLE  localizacao_dep(
	Dnumero Integer,
	Dlocal varchar(20)
);

INSERT INTO localizacao_dep(Dnumero, Dlocal) VALUES (1, 'São Paulo');

INSERT INTO localizacao_dep(Dnumero, Dlocal) VALUES (4, 'Mauá');

INSERT INTO localizacao_dep(Dnumero, Dlocal) VALUES (5, 'Santo André');

CREATE TABLE trabalha_em(
	Fcpf BIGINT,
	Pnr Integer,
	Horas decimal(10,1)
);

INSERT INTO trabalha_em(Fcpf, Pnr, Horas) VALUES(12345678966, 1, 32.5);

INSERT INTO trabalha_em(Fcpf, Pnr, Horas) VALUES(12345678966, 2, 7.5);

INSERT INTO trabalha_em(Fcpf, Pnr, Horas) VALUES(33344555587, 1, 40);

CREATE TABLE projeto(
	Projnome varchar(20),
	Projnumero Integer,
	Projlocal varchar(20),
	Dnum Integer
);

INSERT INTO projeto(Projnome, Projnumero, Projlocal, Dnum) VALUES('ProdutoX', 1, 'Santo André', 5);

INSERT INTO projeto(Projnome, Projnumero, Projlocal, Dnum) VALUES('ProdutoY', 2, 'Sao Paulo', 5);

INSERT INTO projeto(Projnome, Projnumero, Projlocal, Dnum) VALUES('ProdutoZ', 3, 'Mauá', 4);

CREATE TABLE dependente(
	Fcpf BIGINT,
	Nome_dependente varchar(20),
	Sexo varchar(1) CHECK(sexo in ('M' , 'F')),
	Datanasc date,
	Parentesco varchar(20)
);

INSERT INTO dependente(Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES(12345678966, 'Michael', 'M', '05-04-2010', 'Filho');

INSERT INTO dependente(Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES(12345678966, 'Alicia', 'F', '30-11-2000', 'Filha');

INSERT INTO dependente(Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES(33344555587, 'Elizabeth', 'F', '25-10-1955', 'Esposa');


