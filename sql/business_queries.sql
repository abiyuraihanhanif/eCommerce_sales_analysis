-- =====================================
-- QUERY 1: Total Revenue
-- =====================================

SELECT
    SUM(Sales) AS total_revenue
FROM ecommerce_sales;


-- =====================================
-- QUERY 2: Total Profit
-- =====================================

SELECT
    SUM(Profit) AS total_profit
FROM ecommerce_sales;


-- =====================================
-- QUERY 3: Profit Margin
-- =====================================

SELECT
    ROUND(
        CAST(
            SUM(profit) / SUM(sales) * 100
            AS NUMERIC
        ),
        2
    ) AS profit_margin_pct
FROM ecommerce_sales;


-- =====================================
-- QUERY 4: Revenue by Category
-- =====================================

SELECT
    category,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY revenue DESC;


-- =====================================
-- QUERY 5: Profit by Category
-- =====================================

SELECT
    category,
    SUM(profit) AS profit
FROM ecommerce_sales
GROUP BY category
ORDER BY profit DESC;


-- =====================================
-- QUERY 6: Revenue by Region
-- =====================================

SELECT
    region,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY revenue DESC;


-- =====================================
-- QUERY 7: Top 10 Products
-- =====================================

SELECT
    product_name,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;


-- =====================================
-- QUERY 8: Monthly Revenue Trend
-- =====================================

SELECT
    DATE_TRUNC(
        'month',
        order_date::DATE
    ) AS month,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY 1
ORDER BY 1;


-- =====================================
-- QUERY 9: Contribution Analysis
-- =====================================

SELECT
    category,
    SUM(sales) AS revenue,
    ROUND(
        SUM(sales) * 100.0 /
        SUM(SUM(sales)) OVER (),
        2
    ) AS contribution_pct
FROM ecommerce_sales
GROUP BY category
ORDER BY revenue DESC;


-- =====================================
-- QUERY 10: Profit Margin per Category
-- =====================================

SELECT
    category,
    ROUND(
        (
            SUM(profit) /
            SUM(sales) * 100
        )::numeric,
        2
    ) AS margin_pct
FROM ecommerce_sales
GROUP BY category
ORDER BY margin_pct DESC;