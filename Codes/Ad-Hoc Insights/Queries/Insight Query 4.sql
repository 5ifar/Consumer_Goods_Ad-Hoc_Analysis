WITH uniqsegprod_2020 AS (
	SELECT 
		segment AS seg_2020,
		COUNT(DISTINCT(fsm.product_code)) AS prodcnt_2020
	FROM dim_product AS dp
	JOIN fact_sales_monthly AS fsm USING (product_code)
	WHERE fsm.fiscal_year = 2020
	GROUP BY segment
), 
uniqsegprod_2021 AS (
	SELECT 
		segment AS seg_2021,
		COUNT(DISTINCT(fsm.product_code)) AS prodcnt_2021
	FROM dim_product AS dp
	JOIN fact_sales_monthly AS fsm USING (product_code)
	WHERE fsm.fiscal_year = 2021
	GROUP BY segment
)
SELECT
	seg_2020 AS segment,
	prodcnt_2020, prodcnt_2021,
	ROUND(((prodcnt_2021-prodcnt_2020)/prodcnt_2020)*100, 2) AS segprodcnt_inc_pct
FROM uniqsegprod_2020 AS usp_2020, uniqsegprod_2021 AS usp_2021
WHERE usp_2020.seg_2020 = usp_2021.seg_2021
ORDER BY segprodcnt_inc_pct DESC;