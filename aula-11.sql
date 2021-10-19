/*
    Aula 11
    
select * from cursos order by nome asc;
order by ordena pelo determinado campo
where condição 
operadores 
= igual 
!= diferente 
menor < 2016  maior> 2016 
menor <= maior >= 
<> só os diferentes
bettween = entre um determinado intervalo , exemplo de 1 "A" 10
in = em determinados valores fornecidos por exemplo de 1 "E" 10


DDL - LINGUAGEM DE DE DEFINIÇÃO DE DADOS 
CREATE DATABASE
CREATE TABLE 
ALTER TABLE
DROP TABLE

DML - LINGUAGEM DE MANIPULAÇÃO DE DADOS
INSERT INTO 
UPDATE
DELETE 
TRUNCATE 

*/

select ano, carga, nome from cursos order by ano, nome;

select nome, descricao from produtos;
select * from produtos where  nome = 'MOUSE' order by nome;
select  nome, descricao from produtos where categoria_id between 100 and 115;

select  nome, descricao from produtos where categoria_id in( 160);