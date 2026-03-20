select * from notas_fiscais;
select * from itens_notas_fiscais;

select  NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
ON NF.NUMERO = INF.NUMERO;

-- modificando a data
select  NF.CPF,
date_format(NF.DATA_VENDA, '%Y-%M') as ANO_MES,
INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
ON NF.NUMERO = INF.NUMERO;

-- somando os valores da coluna quantidade
select  NF.CPF,
date_format(NF.DATA_VENDA, '%Y-%M') as ANO_MES,
sum(INF.QUANTIDADE) as QNTD_VENDA
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
ON NF.NUMERO = INF.NUMERO
group by NF.CPF, ANO_MES;

-- Obter o Volume total de compra por cliente
select  TC.CPF, TC.NOME,
TC.VOLUME_DE_COMPRA as QNTD_LIMITE
FROM tabela_de_clientes as TC;

-- Juntando as 3 tabelas
select  NF.CPF, TC.NOME,
date_format(NF.DATA_VENDA, '%Y-%M') as ANO_MES,
sum(INF.QUANTIDADE) as QNTD_VENDA,
TC.VOLUME_DE_COMPRA as VOLUME_LIMITE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
ON NF.NUMERO = INF.NUMERO
inner join tabela_de_clientes as TC
ON TC.CPF = NF.CPF
group by NF.CPF, ANO_MES;

-- Usando Subquery
select x.CPF, X.NOME, X.ANO_MES, X.QNTD_VENDA, X.VOLUME_LIMITE,
X.QNTD_VENDA - X.VOLUME_LIMITE as DIFERENCA,
case 
   WHEN (X.VOLUME_LIMITE - X.QNTD_VENDA)
   then "Venda Inválida"
   else "Venda Válida"
end as STATUS_VENDA
from (
select  NF.CPF, TC.NOME,
date_format(NF.DATA_VENDA, '%Y-%M') as ANO_MES,
sum(INF.QUANTIDADE) as QNTD_VENDA,
TC.VOLUME_DE_COMPRA as VOLUME_LIMITE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
ON NF.NUMERO = INF.NUMERO
inner join tabela_de_clientes as TC
ON TC.CPF = NF.CPF
group by NF.CPF, ANO_MES;
