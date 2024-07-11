-- Gross Sales Report: Croma Monthly Gross Sales
-- Generate report of monthly total gross sales amount for Croma India customer.
-- Display Fields: Month, Total Gross Sales for Croma India

SELECT fsm.date AS month, ROUND(SUM(fsm.sold_quantity * fgp.gross_price), 2) AS monthly_gross_sales
FROM fact_sales_monthly AS fsm
JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND get_fiscal_year(fsm.date) = fgp.fiscal_year
WHERE fsm.customer_code = 90002002 -- customer = Croma
GROUP BY month
ORDER BY month ASC;
