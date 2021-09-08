/**
Loja Virtual
@author Luciana Ferraz do Amaral Martins
*/ 

create database dblojavirtual;
show databases;
use dblojavirtual;

-- ALTERAÇÕES comando usado para modificar o tipo de dado 
alter table carrinho modify produto varchar(100) not null;

-- ALTERAÇÕES (aceita número inteiros e não inteiros)
-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com 2 casas decimais
alter table carrinho modify valor decimal(10,2) not null;

-- Comando usado para descrever a tabela IMPORTANTÍSSIMO
describe carrinho;

create table carrinho(
id int primary key auto_increment,
produto varchar(100) not null,
quantidade int not null,
valor decimal(10,2) not null
);

-- Inserir 10 produtos na tabela (valores inteiros e não inteiros)
-- produto 1 
insert into carrinho (produto,quantidade,valor)
values ('Mesa para escritorio','3','499.89');

-- produto 2 
insert into carrinho (produto,quantidade,valor)
values ('Estante 1 módulo','1','950');

-- produto 3 
insert into carrinho (produto,quantidade,valor)
values ('Estante 2 módulos','2','1849.80');

-- produto 4 
insert into carrinho (produto,quantidade,valor)
values ('Estante 3 módulos','4','2550');

-- produto 5 
insert into carrinho (produto,quantidade,valor)
values ('Prateleira simples','8','250');

-- produto 6 
insert into carrinho (produto,quantidade,valor)
values ('Prateleira dupla','2','450.90');

-- produto 7 
insert into carrinho (produto,quantidade,valor)
values ('Prateleira tripla','4','680');

-- produto 8 
insert into carrinho (produto,quantidade,valor)
values ('Armário 1 porta','12','635.90');

-- produto 9 
insert into carrinho (produto,quantidade,valor)
values ('Armário 2 portas','6','990');

-- produto 10 
insert into carrinho (produto,quantidade,valor)
values ('Armário 3 portas','2','1450');

-- selecionar todos os registros da tabela (relatório)
select * from carrinho;

-- Selecionar todos produtos em ordem alfabética
select * from carrinho order by produto asc;

-- Gerar o total do carrinho
select sum(valor*quantidade) as total from carrinho;

-- Alterar a quantidade de 2 produtos (ATENÇÃO!)
update carrinho set quantidade='15' where id=5;
update carrinho set quantidade='2' where id=10;

-- Excluir um produto
delete from carrinho where id=6;