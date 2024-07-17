CREATE PROCEDURE `get_top_n_markets_by_net_sales` (
	in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	SELECT 
		market, 
		ROUND(SUM(net_sales)/1000000, 2) AS net_sales_mil
	FROM net_sales
	WHERE fiscal_year = in_fiscal_year
	GROUP BY market
	ORDER BY net_sales_mil DESC
	LIMIT in_top_n;
END