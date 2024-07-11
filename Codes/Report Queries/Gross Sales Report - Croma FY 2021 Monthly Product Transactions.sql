-- Gross Sales Report: Croma FY 2021 Monthly Product Transactions
-- Generate report of individual product sales (aggregated on a monthly basis at product code level) for Croma in India FY 2021.
-- Display Fields: Month, Product Name, Variant, Sold Quantity, Gross Price per Item, Gross Price Total

SELECT fsm.date AS month, fsm.product_code, dp.product, dp.variant, fsm.sold_quantity, ROUND(fgp.gross_price, 2) AS gross_price, ROUND((fsm.sold_quantity * fgp.gross_price), 2) AS gross_sales
FROM fact_sales_monthly AS fsm
JOIN dim_product AS dp ON fsm.product_code = dp.product_code
JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND get_fiscal_year(fsm.date) = fgp.fiscal_year
WHERE customer_code = 90002002 AND get_fiscal_year(date) = 2021 -- Customer = Croma, FY =2021
ORDER BY month ASC;