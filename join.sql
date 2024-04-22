SELECT
  PR.Nome_Produto,
  ROUND(MIN(Valor_Venda),2) AS Valor_Minimo,
  ROUND(MAX(Valor_Venda),2) AS Valor_Maximo,
  ROUND(AVG(Valor_Venda),2) AS Valor_Medio,
  ROUND(SUM(Valor_Venda),2) AS Valor_Total,
  COUNT(Valor_Venda) AS Contagem,
  PE.Ano
FROM TB_DSA_VENDAS AS V
INNER JOIN TB_DSA_PRODUTOS AS PR
ON V.Produto = PR.ID_Produto
INNER JOIN TB_DSA_PEDIDOS AS PE
ON V.Pedido = PE.ID_Pedido
GROUP BY V.Produto,PE.Ano
ORDER BY Contagem DESC;


