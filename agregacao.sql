SELECT
  MIN(Valor_Venda),
  MAX(Valor_Venda),
  ROUND(AVG(Valor_Venda),2),
  ROUND(SUM(Valor_Venda),2),
  COUNT(Valor_Venda)
FROM TB_DSA_VENDAS;