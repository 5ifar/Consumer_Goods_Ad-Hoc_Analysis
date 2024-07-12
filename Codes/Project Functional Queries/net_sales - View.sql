CREATE VIEW `net_sales` AS
	SELECT 
		*,
		ROUND(((1 - post_invoice_discount_pct) * net_invoice_sales), 2) AS net_sales
	FROM sales_post_inv_discount;