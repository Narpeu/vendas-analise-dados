-- =====================================================
-- PROJETO: ANÁLISE DE VENDAS (SQL)
-- Objetivo: exploração de dados de vendas para gerar
-- insights de negócio (receita, clientes, produtos,
-- países, tempo e status de pedidos)
-- =====================================================

-- IMPORTANTE:
-- Este script assume que existe uma tabela chamada "vendas"
-- contendo os dados do dataset original.

-- =====================================================
-- 1. RECEITA TOTAL
-- =====================================================

SELECT
    SUM(SALES) AS total_revenue
FROM vendas;

-- =====================================================
-- 2. RECEITA POR LINHA DE PRODUTO
-- =====================================================

SELECT
    PRODUCTLINE,
    SUM(SALES) AS total_sales
FROM vendas
GROUP BY PRODUCTLINE
ORDER BY total_sales DESC;

-- =====================================================
-- 3. RECEITA POR PAÍS
-- =====================================================

SELECT
    COUNTRY,
    SUM(SALES) AS total_sales
FROM vendas
GROUP BY COUNTRY
ORDER BY total_sales DESC;

-- =====================================================
-- 4. TOP CLIENTES POR RECEITA
-- =====================================================

SELECT
    CUSTOMERNAME,
    SUM(SALES) AS total_spent
FROM vendas
GROUP BY CUSTOMERNAME
ORDER BY total_spent DESC
LIMIT 10;

-- =====================================================
-- 5. RECEITA POR MÊS (SAZONALIDADE)
-- =====================================================

SELECT
    YEAR_ID,
    MONTH_ID,
    SUM(SALES) AS total_sales
FROM vendas
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;

-- =====================================================
-- 6. DISTRIBUIÇÃO DE STATUS DOS PEDIDOS
-- =====================================================

SELECT
    STATUS,
    COUNT(*) AS total_orders
FROM vendas
GROUP BY STATUS
ORDER BY total_orders DESC;

-- =====================================================
-- 7. TICKET MÉDIO DE VENDA
-- =====================================================

SELECT
    AVG(SALES) AS avg_ticket
FROM vendas;
