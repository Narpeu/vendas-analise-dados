/*
=====================================================
PROJETO: ANÁLISE DE VENDAS (PYTHON + SQL)
=====================================================

OBJETIVO:
Este arquivo contém consultas SQL equivalentes às análises
realizadas previamente em Python (Pandas), com o objetivo
de validar e replicar os mesmos insights utilizando SQL.

-----------------------------------------------------
CONTEXTO DO DATASET:
- Dados de vendas de uma empresa internacional
- Contém informações de pedidos, clientes, produtos,
  países, status e valores de vendas
- Variável principal de análise: SALES (receita)

-----------------------------------------------------
ANÁLISES REPLICADAS EM SQL:

1. Receita por linha de produto
2. Receita por país
3. Top clientes por faturamento
4. Receita ao longo do tempo (mês/ano)
5. Distribuição de status dos pedidos

-----------------------------------------------------
OBSERVAÇÃO:
As consultas abaixo foram construídas para refletir
exatamente as análises feitas no notebook Python,
garantindo consistência entre exploração em Pandas
e validação via SQL.

=====================================================
*/

-- =====================================================
-- 1. RECEITA POR LINHA DE PRODUTO
-- (equivalente à análise PRODUCTLINE no Python)
-- =====================================================

SELECT
    PRODUCTLINE,
    SUM(SALES) AS total_revenue
FROM vendas
GROUP BY PRODUCTLINE
ORDER BY total_revenue DESC;

-- =====================================================
-- 2. RECEITA POR PAÍS
-- (equivalente à análise COUNTRY no Python)
-- =====================================================

SELECT
    COUNTRY,
    SUM(SALES) AS total_revenue
FROM vendas
GROUP BY COUNTRY
ORDER BY total_revenue DESC;

-- =====================================================
-- 3. TOP CLIENTES POR RECEITA
-- (equivalente à análise CUSTOMERNAME no Python)
-- =====================================================

SELECT
    CUSTOMERNAME,
    SUM(SALES) AS total_revenue
FROM vendas
GROUP BY CUSTOMERNAME
ORDER BY total_revenue DESC
LIMIT 10;

-- =====================================================
-- 4. RECEITA AO LONGO DO TEMPO
-- (equivalente à análise ORDERDATE no Python)
-- =====================================================

SELECT
    YEAR_ID,
    MONTH_ID,
    SUM(SALES) AS monthly_revenue
FROM vendas
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;

-- =====================================================
-- 5. DISTRIBUIÇÃO DE STATUS DOS PEDIDOS
-- (equivalente à análise STATUS no Python)
-- =====================================================

SELECT
    STATUS,
    COUNT(*) AS total_orders
FROM vendas
GROUP BY STATUS
ORDER BY total_orders DESC;
