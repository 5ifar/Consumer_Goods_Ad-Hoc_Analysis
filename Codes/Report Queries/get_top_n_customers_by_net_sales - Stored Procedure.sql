CREATE PROCEDURE `get_top_n_customers_by_net_sales` (
	in_market VARCHAR(45),
	in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	# Default market set to India
	IF in_market = "" THEN
		SET in_market="India";
	END IF;

	SELECT
		dc.customer,
		ROUND(SUM(net_sales)/1000000, 2) AS net_sales_mil
	FROM net_sales AS ns
	JOIN dim_customer AS dc ON ns.customer_code = dc.customer_code
	WHERE ns.fiscal_year = in_fiscal_year AND ns.market = in_market
	GROUP BY dc.customer
	ORDER BY net_sales_mil DESC
	LIMIT in_top_n;
END