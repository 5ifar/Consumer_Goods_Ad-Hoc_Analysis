WITH uniqprod_2020 AS (
	SELECT COUNT(DISTINCT(product_code)) AS prodcnt_2020 FROM fact_sales_monthly WHERE fiscal_year = 2020
), uniqprod2021 AS (
	SELECT COUNT(DISTINCT(product_code)) AS prodcnt_2021 FROM fact_sales_monthly WHERE fiscal_year = 2021
)
SELECT 
	prodcnt_2020, prodcnt_2021, 
	ROUND(((prodcnt_2021 - prodcnt_2020)/prodcnt_2020)*100, 2) AS prodcnt_inc_pct 
FROM uniqprod_2020, uniqprod2021;