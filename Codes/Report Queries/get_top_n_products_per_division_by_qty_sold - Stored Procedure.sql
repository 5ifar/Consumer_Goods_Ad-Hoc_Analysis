CREATE PROCEDURE `get_top_n_products_per_division_by_qty_sold` (
	in_fiscal_year INT,
	in_top_n INT
)
BEGIN
	WITH div_prd_soldqty AS (
		SELECT 
			dp.division, ns.product, 
			SUM(ns.sold_quantity) AS total_qty
		FROM net_sales AS ns
		JOIN dim_product AS dp ON ns.product_code = dp.product_code
		WHERE ns.fiscal_year = in_fiscal_year
		GROUP BY dp.division, ns.product
	),
	div_prd_ranking AS (
		SELECT
			*, DENSE_RANK() OVER(PARTITION BY division ORDER BY total_qty DESC) AS div_product_rank
		FROM div_prd_soldqty
	)
	SELECT * FROM div_prd_ranking
	WHERE div_product_rank <= in_top_n;
END
