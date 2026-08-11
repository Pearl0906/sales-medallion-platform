CREATE OR REPLACE TABLE gold_product_sales AS
SELECT
    product_name,
    SUM(quantity) AS total_units_sold,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM silver_sales
GROUP BY product_name;