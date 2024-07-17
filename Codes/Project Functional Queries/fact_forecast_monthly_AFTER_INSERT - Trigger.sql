CREATE DEFINER = CURRENT_USER TRIGGER `gdb0041`.`fact_forecast_monthly_AFTER_INSERT` AFTER INSERT ON `fact_forecast_monthly` FOR EACH ROW
BEGIN
	INSERT INTO fact_actuals_estimates
		(date, product_code, customer_code, forecast_quantity)
	VALUES(NEW.date, NEW.product_code, NEW.customer_code, NEW.forecast_quantity)
	ON DUPLICATE KEY UPDATE forecast_quantity = values(forecast_quantity);
END