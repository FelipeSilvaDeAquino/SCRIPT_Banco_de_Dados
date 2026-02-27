# CENTRO EST EDU PROF P MARIA R CASTALDI
# Curso Técnico em Análise e Desenvolvimento de Sistemas
#Banco de Dados II
#LISTA I - EXPRESSÕES CONDICIONAIS
#1.Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’, cujo bairro é ‘Jardins’. Ela está de férias?
#2.A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.
#3.Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015. Por que o CPF desta tabela não é uma chave primária (PK)?
#4.Na tabela dos itens das notas fiscais, selecione o código do produto e a quantidade vendida dos itens que possuam quantidade de venda igual ou maior do que 99. Qual ou quais itens representam o maior valor de venda?
#5.Quem é o cliente que comprou 84 produtos com o número de código igual a 1101035, cujo número da nota fiscal foi 102? Quem foi o vendedor ou vendedora responsável e qual o nome do produto e seu sabor? Gere o Diagrama de Entidade - Relacionamento para melhor compreensão.

#Questão 1
SELECT nome, de_ferias, bairro
FROM tabela_de_vendedores
WHERE de_ferias = 'S';

#Questão 2
SELECT nome, PERCENTUAL_COMISSAO
FROM tabela_de_vendedores
WHERE PERCENTUAL_COMISSAO > 0.10 ;

#Questão 3
SELECT *
FROM notas_fiscais
WHERE matricula = '00237'
OR data_venda = '2015-01-12';

#Questão 4
SELECT CODIGO_DO_PRODUTO
VOLUME_DE_COMPRA,
PRECO_DE_LISTA,
       (VOLUME_DE_COMPRA * PRECO_DE_LISTA) AS valor_total
FROM itens_notas_fiscais
WHERE quantidade >= 99
ORDER BY valor_total DESC;

#Questão 5
SELECT * 
FROM itens_notas_fiscais
WHERE NUMERO = 102
AND CODIGO_DO_PRODUTO = '1101035'
AND VOLUME_DE_COMPRA = 84;

SELECT CPF, MATRICULA
FROM notas_fiscais
WHERE NUMERO = 102;

SELECT NOME
FROM tabela_de_clientes
WHERE CPF = 'CPF_ENCONTRADO';

SELECT NOME
FROM tabela_de_vendedores
WHERE MATRICULA = 'MATRICULA_ENCONTRADA';

SELECT NOME_DO_PRODUTO, sabor
FROM tabela_de_produtos
WHERE CODIGO_DO_PRODUTO = '1101035';