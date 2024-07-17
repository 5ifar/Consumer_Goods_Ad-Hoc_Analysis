WITH customer_net_sales AS (
	SELECT
		dc.customer, dc.region,
        ROUND(SUM(ns.net_sales)/1000000, 2) as net_sales_mil
	FROM net_sales AS ns
	JOIN dim_customer AS dc ON ns.customer_code = dc.customer_code
	WHERE ns.fiscal_year=2021
	GROUP BY dc.customer, dc.region
)
select
	*,
	(net_sales_mil * 100) / SUM(net_sales_mil) OVER(PARTITION BY region) AS regional_net_sales_pct
FROM customer_net_sales
ORDER BY region ASC, regional_net_sales_pct DESC;