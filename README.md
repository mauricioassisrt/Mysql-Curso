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
