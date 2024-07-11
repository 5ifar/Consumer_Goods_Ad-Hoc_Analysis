-- Gross Sales Report: Croma Yearly Gross Sales
-- Generate report of yearly total gross sales amount for Croma India customer.
-- Display Fields: Fiscal Year, Total Gross Sales for Croma India

SELECT get_fiscal_year(fsm.date) as fiscal_year, ROUND(SUM(fsm.sold_quantity * fgp.gross_price), 2) AS yearly_gross_sales
FROM fact_sales_monthly AS fsm
JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND get_fiscal_year(fsm.date) = fgp.fiscal_year
WHERE fsm.customer_code = 90002002 -- customer = Croma
GROUP BY get_fiscal_year(fsm.date)
ORDER BY fiscal_year ASC;