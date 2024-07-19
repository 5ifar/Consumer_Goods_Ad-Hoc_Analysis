SELECT 
	segment,
	COUNT(product_code) AS prod_cnt
FROM dim_product
GROUP BY segment
ORDER BY prod_cnt DESC;