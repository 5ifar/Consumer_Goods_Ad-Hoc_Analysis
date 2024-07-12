CREATE VIEW `gross_sales` AS
	SELECT 
		fsm.date AS month, 
		fsm.fiscal_year, 
        fsm.customer_code, dc.customer, 
        dc.market, 
		fsm.product_code, dp.product, dp.variant, 
		fsm.sold_quantity, 
		ROUND(fgp.gross_price, 2) AS gross_price, 
		ROUND((fsm.sold_quantity * fgp.gross_price), 2) AS gross_sales
	FROM fact_sales_monthly AS fsm
	JOIN dim_customer AS dc ON fsm.customer_code = dc.customer_code
	JOIN dim_product AS dp ON fsm.product_code = dp.product_code
	JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND fsm.fiscal_year = fgp.fiscal_year;