SELECT
  Produto,
  ROUND(MIN(Valor_Venda),2) AS Valor_Minimo,
  ROUND(MAX(Valor_Venda),2) AS Valor_Maximo,
  ROUND(AVG(Valor_Venda),2) AS Valor_Medio,
  ROUND(SUM(Valor_Venda),2) AS Valor_Total,
  COUNT(Valor_Venda) AS Contagem
FROM TB_DSA_VENDAS
GROUP BY Produto;

-- A coluna que não estiver na função de agregação vem para o GROUP BY