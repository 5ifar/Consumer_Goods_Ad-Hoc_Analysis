CREATE PROCEDURE `get_forecast_accuracy`(
	in_fiscal_year INT
)
BEGIN
	WITH forecast_metrics AS (
		SELECT
			fae.customer_code AS customer_code,
			dc.customer AS customer_name,
			dc.market AS market,
			SUM(fae.sold_quantity) AS total_sold_qty,
			SUM(fae.forecast_quantity) AS total_forecast_qty,
			SUM(fae.forecast_quantity - fae.sold_quantity) AS net_error,
			ROUND(SUM(fae.forecast_quantity - fae.sold_quantity) * 100 / SUM(fae.forecast_quantity), 2) AS net_error_pct,
			SUM(ABS(fae.forecast_quantity - fae.sold_quantity)) AS abs_error,
			ROUND(SUM(ABS(fae.forecast_quantity - sold_quantity)) * 100 / SUM(fae.forecast_quantity), 2) AS abs_error_pct
		FROM fact_actuals_estimates AS fae
		JOIN dim_customer AS dc ON fae.customer_code = dc.customer_code
		WHERE fae.fiscal_year = in_fiscal_year
		GROUP BY fae.customer_code
	)
	SELECT 
		*,
		IF (abs_error_pct > 100, 0, 100.00 - abs_error_pct) AS forecast_accuracy
	FROM forecast_metrics
	ORDER BY forecast_accuracy DESC;
END