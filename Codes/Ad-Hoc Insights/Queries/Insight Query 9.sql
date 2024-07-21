WITH channel_gs AS (
	SELECT 
		channel,
		SUM(gross_sales) AS channel_gross_sales
	FROM gross_sales AS gs
	JOIN dim_customer AS dc USING (customer_code)
	WHERE gs.fiscal_year = 2021
	GROUP BY channel
), 
overall_gs AS (
	SELECT SUM(gross_sales) AS total_gross_sales FROM gross_sales WHERE fiscal_year = 2021
)
SELECT 
	channel,
	ROUND(channel_gross_sales/1000000, 2) AS channel_gross_sales_mil,
	ROUND((channel_gross_sales/total_gross_sales)*100, 2) AS channel_gs_pct
FROM channel_gs, overall_gs
ORDER BY channel_gs_pct DESC;