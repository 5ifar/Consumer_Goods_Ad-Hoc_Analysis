CREATE PROCEDURE `get_top_n_markets_per_region_by_gross_sales` (
	in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	WITH reg_mkt_totalgs AS ( 
		SELECT 
			dc.region, gs.market,
			ROUND(SUM(gs.gross_sales)/1000000, 2) AS gross_sales_mil
		FROM gross_sales AS gs
		JOIN dim_customer AS dc ON gs.customer_code = dc.customer_code
		WHERE gs.fiscal_year = in_fiscal_year
		GROUP BY gs.market, dc.region
	),
	reg_mkt_ranking AS (
		SELECT
			*, DENSE_RANK() OVER(PARTITION BY region ORDER BY gross_sales_mil DESC) AS reg_market_rank
		FROM reg_mkt_totalgs
	)
	SELECT * FROM reg_mkt_ranking
	WHERE reg_market_rank <= in_top_n;
END
