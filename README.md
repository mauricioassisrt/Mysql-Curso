# Mysql-Curso
Cursos em vídeo - Gustavo Guanabara 
Playlist https://www.youtube.com/watch?v=Ofktsne-utM&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r <br>

Fichas = Registros

Pastas = Tabelas 

Armarios = Arquivos 

Sql é uma linguagem de consulta 

Structure query langue

Banco de dados são coleções de dados 
que estão organizados em locais especificos
que são as tabelas

Tabelas guardam dados de coisas semelhantes 
tabelas são conjunto de registros 

Tipos primitivos do mysql são:

Númerico = Inteiro= Tinyint, SmallInt, Int, MediumInt, BigInt; real= Decimal, Float, Double, Real; Lógico=Bit, bolean; ,

Data/Tempo = Date, dateTime, Timestamp, Time, Year , 

Literal= Caractere= Char, Varchar

Texto = tinytext, Text, MediumText, longtext

Binário = TinyBlob, blob, MediumBlob, LongBlob

Coleção Enumm, Set

espacial Geometry, Point, Polygon, Multipolygon

#comando criar database

CREATE DATABASE meudb

# comando para criar tabela 
create table pessoas(
    nome varchar(30),
    idade tinyint(3), 
    sexo char(1),
    peso float, 
    nascionalidade varchar(20),
    altura float
);

parametros chamamos de constrants no mysql

create database cadastro 

default character set utf8

definição dos caracteres 
default collate utf8_general_ci

create table pessoas(
	id int not null auto_increment, 
    nome varchar(30) not null,
    nascimento date, 
    sexo enum('M', 'F'),
    peso decimal(5,2), 
    nascionalidade varchar(20) default 'brasil',
    altura decimal(3,2),
    primary key(id)
)default charset=utf8;f8;

TUPLA = REGISTRO 

Comandos DDL significa data definition language 

LINGUAGEM DE DEFINIÇÂO DE DADOS

Comandos DDL CREATE TABLE, create database, 

insert into pessoas
(id nome, nascimento, sexo, peso, altura, nascionalidade) 
values
(default 'Godofredo', '2010-10-10', 'M', 59, 1.49, 'BRASIL');

sem informar os campos a ordem deve ser respeitada ( ordem de criação )
(id nome, nascimento, sexo, peso, altura, nascionalidade) 


insert into pessoas
values
(default, 'adalgiza', '1910-10-10', 'M', 54.0, 'IRLANDA',1.49 );

para inserir varios registros só separar por virgula, 

insert into pessoas
values
(default, 'ruam', '1910-10-10', 'M', 54.0, 'IRLANDA',1.58 ), 
(default, 'claudio', '1910-12-10', 'M', 65.0, 'ITALIA',1.69 ), 
(default, 'miguel', '1910-05-10', 'M', 94.0, 'EUA',1.99 );

DML DATA MANIPULATION LANGUAGE INSERT INTO 

/**ADD COLUN */
alter table pessoas add column profissao varchar (10);


/** DROP COLUN  **/
alter table pessoas 
drop column profissao;

/**ADD COLUN position especifica  */
alter table pessoas add column profissao varchar (10) after nome;
/** 
	firs 1 campo, sem nenhum marcador o ultimo e after após 
	Modify pode redefinir as contrantis e alterar os tipos primitivos do campos, 
**/
alter table pessoas 
modify column profissao varchar (20) not null;

/**
	change mudar nome da coluna 
**/
alter table pessoas change column profissao prof varchar(20);

/**
	rename to renomea a tabela 
**/
alter table pessoas rename to gafanhotos;

create table if not exists cursos (
nome varchar(30) not null unique ,
descricao text, 
carga int unsigned, 
totaulas int, 
ano year default '2021'
) default charset='utf8';
