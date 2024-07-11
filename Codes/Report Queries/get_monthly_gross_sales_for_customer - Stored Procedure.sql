CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	in_customer_codes TEXT
)
BEGIN
	SELECT fsm.date AS month, ROUND(SUM(fsm.sold_quantity * fgp.gross_price), 2) AS monthly_gross_sales
	FROM fact_sales_monthly AS fsm
	JOIN fact_gross_price AS fgp ON fsm.product_code = fgp.product_code AND get_fiscal_year(fsm.date) = fgp.fiscal_year
	WHERE FIND_IN_SET(fsm.customer_code, in_customer_codes) > 0
	GROUP BY month;
END