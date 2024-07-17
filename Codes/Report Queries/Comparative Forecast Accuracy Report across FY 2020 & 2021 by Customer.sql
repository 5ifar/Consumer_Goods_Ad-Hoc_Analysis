-- 1. Get Forecast Accuracy for FY 2021 and store it in a Temporary table.
DROP TABLE IF EXISTS forecast_2021;
CREATE TEMPORARY TABLE forecast_2021
	WITH forecast_metrics AS (
		SELECT
			fae.customer_code AS customer_code,
			dc.customer AS customer_name,
			dc.market AS market,
			SUM(fae.sold_quantity) AS total_sold_qty,
			SUM(fae.forecast_quantity) AS total_forecast_qty,
			SUM(fae.forecast_quantity - fae.sold_quantity) AS net_error,
			ROUND(SUM(fae.forecast_quantity - fae.sold_quantity) * 100 / SUM(fae.forecast_quantity), 1) AS net_error_pct,
			SUM(ABS(fae.forecast_quantity - fae.sold_quantity)) AS abs_error,
			ROUND(SUM(ABS(fae.forecast_quantity - sold_quantity)) * 100 / SUM(fae.forecast_quantity), 2) AS abs_error_pct
		FROM fact_actuals_estimates AS fae
		JOIN dim_customer AS dc ON fae.customer_code = dc.customer_code
		WHERE fae.fiscal_year = 2021
		GROUP BY customer_code
	)
	SELECT
		*,
		IF (abs_error_pct > 100, 0, 100.00 - abs_error_pct) as forecast_accuracy_2021
	FROM forecast_metrics;

-- 2. Get Forecast Accuracy for FY 2020 and store it too in a Temporary table.
DROP TABLE IF EXISTS forecast_2020;
CREATE TEMPORARY TABLE forecast_2020
	WITH forecast_metrics AS (
		SELECT
			fae.customer_code AS customer_code,
			dc.customer AS customer_name,
			dc.market AS market,
			SUM(fae.sold_quantity) AS total_sold_qty,
			SUM(fae.forecast_quantity) AS total_forecast_qty,
			SUM(fae.forecast_quantity - fae.sold_quantity) AS net_error,
			ROUND(SUM(fae.forecast_quantity - fae.sold_quantity) * 100 / SUM(fae.forecast_quantity), 1) AS net_error_pct,
			SUM(ABS(fae.forecast_quantity - fae.sold_quantity)) AS abs_error,
			ROUND(SUM(ABS(fae.forecast_quantity - sold_quantity)) * 100 / SUM(fae.forecast_quantity), 2) AS abs_error_pct
		FROM fact_actuals_estimates AS fae
		JOIN dim_customer AS dc ON fae.customer_code = dc.customer_code
		WHERE fae.fiscal_year = 2020
		GROUP BY customer_code
	)
	SELECT
		*,
		IF (abs_error_pct > 100, 0, 100.00 - abs_error_pct) as forecast_accuracy_2020
	FROM forecast_metrics;

-- 3. Join Forecast Accuracy Temporary tables for 2020 and 2021 based on customer_code field and isolate records where forecast values for FY 2021 are less than FY 2020.
SELECT 
	f2020.customer_code, f2020.customer_name, 
	f2020.market,
	forecast_accuracy_2020, 
	forecast_accuracy_2021,
	forecast_accuracy_2020 - forecast_accuracy_2021 AS accuracy_decline,
	ROUND((forecast_accuracy_2020 - forecast_accuracy_2021) * 100 / forecast_accuracy_2020, 2) AS accuracy_decline_pct
FROM forecast_2020 AS f2020
JOIN forecast_2021 AS f2021 USING (customer_code)
WHERE forecast_accuracy_2021 < forecast_accuracy_2020
ORDER BY accuracy_decline_pct DESC;