WITH prod_manufacost AS (
	SELECT
		product_code, product, manufacturing_cost
	FROM dim_product
	JOIN fact_manufacturing_cost USING (product_code)
)
(SELECT *, "Highest Cost" AS overall FROM prod_manufacost ORDER BY manufacturing_cost DESC LIMIT 1)
UNION
(SELECT *, "Lowest Cost" AS overall FROM prod_manufacost ORDER BY manufacturing_cost ASC LIMIT 1);