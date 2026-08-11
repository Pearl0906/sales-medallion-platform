CREATE OR REPLACE TABLE bronze_sales AS
SELECT
    sale_id,
    sale_date,
    customer_name,
    product_name,
    quantity,
    unit_price
FROM sales;