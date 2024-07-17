-- Drop fact_actuals_estimates if it exists.
DROP TABLE IF EXISTS fact_actuals_estimates;

-- Create fact_actuals_estimates table by full outer joining fact_sales_monthly & fact_forecast_monthly tables.
CREATE TABLE fact_actuals_estimates 
	(SELECT 
		fsm.date AS date,
		fsm.fiscal_year AS fiscal_year,
		fsm.product_code AS product_code,
		fsm.customer_code AS customer_code,
		fsm.sold_quantity AS sold_quantity,
		ffm.forecast_quantity AS forecast_quantity
	FROM fact_sales_monthly AS fsm
	LEFT JOIN fact_forecast_monthly AS ffm USING (date , customer_code , product_code)
	) 
	UNION
	(SELECT 
		ffm.date AS date,
		ffm.fiscal_year AS fiscal_year,
		ffm.product_code AS product_code,
		ffm.customer_code AS customer_code,
		fsm.sold_quantity AS sold_quantity,
		ffm.forecast_quantity AS forecast_quantity
	FROM fact_forecast_monthly AS ffm
	LEFT JOIN fact_sales_monthly AS fsm USING (date , customer_code , product_code));

-- Update fact_actuals_estimates table to replace all NULL sold/forecast quantities as 0.
UPDATE fact_actuals_estimates
SET sold_quantity = 0
WHERE sold_quantity IS NULL;

UPDATE fact_actuals_estimates
SET forecast_quantity = 0
WHERE forecast_quantity IS NULL;