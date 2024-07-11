CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	IN in_market VARCHAR(45),
	IN in_fiscal_year YEAR,
	OUT out_market_badge VARCHAR(45)
)
BEGIN
	DECLARE qty INT DEFAULT 0;
    
	# Default market set to India
	IF in_market = "" THEN
		SET in_market="India";
	END IF;
    
	SELECT SUM(fsm.sold_quantity) INTO qty 
    FROM fact_sales_monthly AS fsm
	JOIN dim_customer AS dc ON fsm.customer_code = dc.customer_code
	WHERE GET_FISCAL_YEAR(fsm.date) = in_fiscal_year AND dc.market = in_market;
	
	# Determine Gold or Silver badge
	IF qty > 5000000 THEN SET out_market_badge = 'Gold';
	ELSE SET out_market_badge = 'Silver';
	END IF;
END