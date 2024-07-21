WITH prod_sold_qty AS (
	SELECT 
		dp.product_code, dp.product, dp.division,
		SUM(fsm.sold_quantity) AS total_sold_qty
	FROM fact_sales_monthly AS fsm
	JOIN dim_product AS dp USING (product_code)
	WHERE fsm.fiscal_year = 2021
	GROUP BY dp.product_code, dp.product, dp.division
), 
div_sold_qty_ranking AS (
	SELECT 
		division, product_code, product,
		total_sold_qty,
		DENSE_RANK () OVER(PARTITION BY division ORDER BY total_sold_qty DESC) AS sold_qty_div_rank
	FROM prod_sold_qty
	ORDER BY division, sold_qty_div_rank
)
SELECT * FROM div_sold_qty_ranking WHERE sold_qty_div_rank < 4;