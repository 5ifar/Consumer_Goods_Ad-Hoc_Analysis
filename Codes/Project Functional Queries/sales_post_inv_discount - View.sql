CREATE VIEW `sales_post_inv_discount` AS
	SELECT 
		spid.month,
		spid.fiscal_year,
		spid.customer_code,
		spid.market,
		spid.product_code, spid.product, spid.variant,
		spid.sold_quantity,
		spid.gross_sales,
		spid.pre_invoice_discount_pct,
		ROUND(((1 - spid.pre_invoice_discount_pct) * spid.gross_sales), 2) AS net_invoice_sales,
		ROUND((fpoid.discounts_pct + fpoid.other_deductions_pct), 2) as post_invoice_discount_pct
	FROM sales_pre_inv_discount AS spid
	JOIN fact_post_invoice_deductions AS fpoid
		ON fpoid.customer_code = spid.customer_code AND fpoid.product_code = spid.product_code AND fpoid.date = spid.month;