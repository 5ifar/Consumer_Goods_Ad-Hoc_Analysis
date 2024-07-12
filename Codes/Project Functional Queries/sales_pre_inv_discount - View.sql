CREATE VIEW `sales_pre_inv_discount` AS
	SELECT 
		fsm.date AS month, 
		fsm.fiscal_year, 
		fsm.customer_code, 
		dc.market,
		fsm.product_code, dp.product, dp.variant, 
		fsm.sold_quantity, 
		ROUND(fgp.gross_price, 2) AS gross_price, 
		ROUND((fsm.sold_quantity * fgp.gross_price), 2) AS gross_sales, 
		ROUND(fprid.pre_invoice_discount_pct, 2)
	FROM fact_sales_monthly AS fsm
	JOIN dim_customer AS dc ON fsm.customer_code = dc.customer_code
	JOIN dim_product AS dp ON fsm.product_code = dp.product_code
	JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND fsm.fiscal_year = fgp.fiscal_year
	JOIN fact_pre_invoice_deductions AS fprid ON fsm.customer_code = fprid.customer_code AND fsm.fiscal_year = fprid.fiscal_year;