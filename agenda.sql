/**
Agenda de contatos
@author Luciana Ferraz do Amaral Martins
*/
-- pode ser usado como comentário
-- + ctrl enter (para executar o código) 

-- Pesquisar banco de dados disponíveis
show databases; 

-- Pesquisar tabelas no banco de dados
-- Verificar tabelas disponíveis no banco de dados
show tables;

-- APAGAR Remover um banco de dados 
drop database dbagenda; 

-- APAGAR Remover uma tabela 
drop table contatos;  
-- posso recriar essa tabela com o script 

-- Selecionar o banco de dados
use dbagenda;

-- Comando usado para APAGAR um campo da tabela 
-- alter table contatos drop(apagar) column obs(field-campo); 
alter table contatos drop column obs;

-- ALTERAÇÕES Comando usado para alterar o nome de um campo (cabeçalho) da tabela 
alter table contatos change nome contato varchar (50) not null; 

-- ALTERAÇÕES Comando usado para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);

-- ALTERAÇÕES acrescentar uma coluna em um lugar específico 
-- Comando usado para adicionar um novo campo em um lugar específico
alter table contatos add column fone2 varchar (15) after fone;

-- ALTERAÇÕES comando uasado para modificar o tipo de dado 
alter table contatos modify column fone2 varchar(15) not null after fone;
-- validações do campo(tornar obrigatório)
alter table contatos modify email varchar(100) unique;

-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com 2 casas decimais
-- aceita número inteiros e não inteiros
alter table carrinho modify valor decimal(10,2) not null;

-- Comando usado para descrever a tabela IMPORTANTÍSSIMO
describe contatos;  
-- Field (campos) tabela com os dados  

-- Criando um banco de dados
create database dbagenda;
show databases;
use dbagenda;

-- Criando uma tabela no banco de dados (create table)
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);

use dbagenda;

alter table contatos change nome contato varchar (50) not null; 
describe contatos; 
alter table contatos change contato nome varchar (50) not null;

-- Lista todo mundo que está cadastrado 
select * from contatos;

/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.

CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela) Alterar quantidade
DELETE (exclusão de um registro da tabela) Tirar  
*/

/* CRUD CREATE (Insert)*/
-- quando uso VARCHAR tenho que usar aspa simples
insert into contatos (nome,fone,email)
values ('Bill Gates','99999-1111','bill@email.com'); 

insert into contatos (nome,fone)
values ('Beatriz','99999-2222');

insert into contatos (nome,fone)
values ('Elvis Presley','99999-9999');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');

insert into contatos (nome,fone,email)
values ('Madonna','99999-5555','madonna@email.com');

insert into contatos (nome,fone,email)
values ('Michael Jackson','99999-6666','michaeljackson@email.com');

insert into contatos (nome,fone,email)
values ('Moana Disney','99999-7777','moanadisney@email.com');

insert into contatos (nome,fone,email)
values ('Maroon5','99999-8888','maroon5@email.com');

insert into contatos (nome,fone,email)
values ('Wonder Woman','99999-1234','wonderwoman@email.com');

insert into contatos (nome,fone,email)
values ('Aquaman','99999-5678','aquaman@email.com');

insert into contatos (nome,fone,email)
values ('Indiana Jones','99999-6789','indianajones@email.com');

insert into contatos (nome,fone,email)
values ('Lara Croft','99999-7890','laracroft@email.com');


/* CRUD READ (Select)*/
-- é uma espécie de relatório
-- selecionar todos os registros da tabela
select * from contatos;

-- selecionar todos os registros da tabela em ordem alfabética (ascendente/descendente)
select * from contatos order by nome asc;
select * from contatos order by nome desc;

-- selecionar um registro específico
select * from contatos where nome='Ana Maria';
select * from contatos where id=10;

-- selecionar campos específicos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;

-- filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';