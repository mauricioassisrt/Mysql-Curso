use cadastro;
create table pessoas(
	id int not null auto_increment, 
    nome varchar(30) not null,
    nascimento date, 
    sexo enum('M', 'F'),
    peso decimal(5,2), 
    nascionalidade varchar(20) default 'brasil',
    altura decimal(3,2),
    primary key(id)
)default charset=utf8;

insert into pessoas
values
(default, 'ruam', '1910-10-10', 'M', 54.0, 'IRLANDA',1.58 ), 
(default, 'claudio', '1910-12-10', 'M', 65.0, 'ITALIA',1.69 ), 
(default, 'miguel', '1910-05-10', 'M', 94.0, 'EUA',1.99 );

select * from pessoas;
/**ADD COLUN */
alter table pessoas add column profissao varchar (10);


/**DROP COLUN  ***/
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

alter table cursos 
add column idcurso int first;

alter table cursos
add primary key (idcurso);



describe cursos;