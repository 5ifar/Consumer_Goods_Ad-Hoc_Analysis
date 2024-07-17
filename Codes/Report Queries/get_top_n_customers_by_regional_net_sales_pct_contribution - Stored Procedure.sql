CREATE PROCEDURE `get_top_n_customers_by_regional_net_sales_pct_contribution` (
	in_region VARCHAR(45),
    in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	# Default region set to APAC
	IF in_region = "" THEN
		SET in_region = "APAC";
	END IF;

	WITH customer_net_sales AS (
		SELECT
			dc.customer, dc.region,
			ROUND(SUM(ns.net_sales)/1000000, 2) as net_sales_mil
		FROM net_sales AS ns
		JOIN dim_customer AS dc ON ns.customer_code = dc.customer_code
		WHERE ns.fiscal_year = in_fiscal_year
		GROUP BY dc.customer, dc.region
	)
	select
		*,
		(net_sales_mil * 100) / SUM(net_sales_mil) OVER(PARTITION BY region) AS regional_net_sales_pct
	FROM customer_net_sales
    WHERE region = in_region
	ORDER BY region ASC, regional_net_sales_pct DESC
    LIMIT in_top_n;
END
