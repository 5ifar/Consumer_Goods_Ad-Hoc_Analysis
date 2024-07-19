SELECT 
	DISTINCT(market) AS atliq_exclusive_markets 
FROM gdb0041.dim_customer
WHERE customer = "Atliq Exclusive" AND region = "APAC";