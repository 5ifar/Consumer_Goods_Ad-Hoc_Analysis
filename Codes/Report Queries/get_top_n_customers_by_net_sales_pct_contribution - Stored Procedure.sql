CREATE PROCEDURE `get_top_n_customers_by_net_sales_pct_contribution` (
	in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	WITH customer_net_sales AS (
		SELECT
			dc.customer,
			ROUND(SUM(ns.net_sales)/1000000, 2) as net_sales_mil
		FROM net_sales AS ns
		JOIN dim_customer AS dc ON ns.customer_code = dc.customer_code
		WHERE ns.fiscal_year = in_fiscal_year
		GROUP BY dc.customer
	)
	select
		*,
		(net_sales_mil * 100) / SUM(net_sales_mil) OVER() AS net_sales_pct
	FROM customer_net_sales
	ORDER BY net_sales_mil DESC
	LIMIT in_top_n;
END