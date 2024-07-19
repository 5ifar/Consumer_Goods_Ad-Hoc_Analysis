SELECT 
	fprid.customer_code, dc.customer,
	fprid.pre_invoice_discount_pct AS high_pre_inv_discount_pct
FROM dim_customer AS dc
JOIN fact_pre_invoice_deductions AS fprid USING (customer_code)
WHERE fprid.fiscal_year = 2021 AND dc.market = "India" AND pre_invoice_discount_pct > (SELECT AVG(pre_invoice_discount_pct) FROM fact_pre_invoice_deductions WHERE fiscal_year = 2021)
ORDER BY high_pre_inv_discount_pct DESC 
LIMIT 5