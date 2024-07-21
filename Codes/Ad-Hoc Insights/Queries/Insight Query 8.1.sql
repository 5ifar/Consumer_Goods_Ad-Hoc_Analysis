SELECT 
	get_fiscal_quarter(date) AS FQ,
	SUM(sold_quantity) AS total_sold_qty
FROM fact_sales_monthly
WHERE fiscal_year = 2020
GROUP BY FQ
ORDER BY total_sold_qty DESC;