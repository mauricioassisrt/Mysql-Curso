select * from produtos where descricao  like 'M%';
SELECT DISTINCT descricao from produtos;
select count(*) from categorias;
/* like '%MATERIAL  PORCENTAGEM NO INICIO, ELE IRÁ PROCURAR AS PALAVRAS QUE CONTÉM MATERIAL NO FINAL 
	LIKE NO FINAL ELE PEGA O INICIO DA SENTENÇA E PESQUISA A SEMELHANÇA COM O INICIO INDEPENDENTEMENTE DO FINAL DA PALAVRA 
    %PALAVRA% ELE PROCURA NA CONSULTA TODA 
	%PALA%VRA_ O UNDERLINE EXIGE QUE TENHA ALGUMA COISA NA SEQUENCIA APÓS O a E O PORCENTAGEM NO MEIO ELE BUSCA PALA E ONDE TIVER O VRA DEPOIS ELE 
    BUSCA 
    o proprio nome diz, distinção 
    distinct serve para exibir só os valores sem repetição DISTINTOS
    
    count(*) é para contagem, ele faz o select e contar  todos os registros serve para contar a quantidade de registros da consulta  
    MIN e MAX() ele verifica o quantitativo menor ou maior de um determinado campo 
     SUM é para somatoria ele busca dentro de um determinado campo e faz a somatoria desse campos dentre os demais registros 
     AVG media aritimetica 
    
  */