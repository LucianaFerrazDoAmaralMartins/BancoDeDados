/**
dbinfox
@author Luciana Ferraz do Amaral Martins
*/ 

create database dbinfox;
show databases;
use dbinfox;

create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

describe usuarios;

-- Cadastrar 5 usuários na tabela -> login (cadastrar o email) -> senha (usar criptografia)
-- usuário 1 
insert into usuarios (usuario, login, senha)
values ('Fred Flintstone', 'fredflintstone@email.com', md5('111111'));

-- usuário 2 
insert into usuarios (usuario, login, senha)
values ('Wilma Flintstone', 'wilmaflintstone@email.com', md5('222222'));

-- usuário 3 
insert into usuarios (usuario, login, senha)
values ('Barney Rubble', 'barneyrubble@email.com', md5('333333'));

-- usuário 4 
insert into usuarios (usuario, login, senha)
values ('Betty Rubble', 'bettyrubble@email.com', md5('444444'));

-- usuário 5 
insert into usuarios (usuario, login, senha)
values ('Bambam Rubble', 'bambamrubble@email.com', md5('555555'));

-- aumentar o número de caracteres para senha criptografada
alter table usuarios modify senha varchar (250);
-- aumentar o tamanho do nome de login 
alter table usuarios modify login varchar (50);

-- IMPORTANTÍSSIMO! inserir campo criptografado (número de cartão de crédito, senhas)
-- a senha obrigatóriamente tem que estar criptografada
-- é muito séria a questão do sigilo da senha 
-- Armazenando um campo com criptografia (mais simples)
insert into usuarios (usuario, login, senha)
values ('Luciana', 'admin', md5('000000'));

select * from usuarios;
