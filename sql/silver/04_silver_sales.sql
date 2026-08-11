CREATE OR REPLACE TABLE silver_sales AS
SELECT
    sale_id,
    sale_date,
    TRIM(customer_name) AS customer_name,
    TRIM(product_name) AS product_name,
    quantity,
    unit_price,
    quantity * unit_price AS total_amount
FROM bronze_sales
WHERE sale_id IS NOT NULL
  AND sale_date IS NOT NULL
  AND customer_name IS NOT NULL
  AND product_name IS NOT NULL
  AND quantity > 0
  AND unit_price >= 0;