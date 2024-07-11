CREATE DEFINER=`root`@`localhost` PROCEDURE `market_badge`(
	in_market VARCHAR(45),
    in_fiscal_year YEAR
)
BEGIN
	# Default market set to India
	IF in_market = "" THEN
		SET in_market="India";
	END IF;

	SELECT in_market, in_fiscal_year, SUM(fsm.sold_quantity) AS sold_quantity, IF(SUM(fsm.sold_quantity) > 5000000, "Gold", "Silver") AS badge
	FROM fact_sales_monthly AS fsm
	JOIN dim_customer AS dc ON fsm.customer_code = dc.customer_code
    WHERE get_fiscal_year(fsm.date) = in_fiscal_year AND dc.market = in_market;
END