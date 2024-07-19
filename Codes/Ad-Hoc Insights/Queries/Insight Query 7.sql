SELECT
	CONCAT(MONTHNAME(month), ' (', YEAR(month), ')') AS month,
	fiscal_year,
	SUM(gross_sales) AS gross_sales_amount
FROM gross_sales
WHERE customer = "Atliq Exclusive"
GROUP BY month, fiscal_year
ORDER BY gross_sales_amount DESC;