CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(
	calendar_date DATE
) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE m TINYINT;
    DECLARE fiscal_quarter CHAR(2);
    SET m = MONTH(calendar_date);
    CASE
		WHEN m IN (9, 10, 11) THEN SET fiscal_quarter = "Q1";
        WHEN m IN (12, 1, 2) THEN SET fiscal_quarter = "Q2";
        WHEN m IN (3, 4, 5) THEN SET fiscal_quarter = "Q3";
        ELSE SET fiscal_quarter = "Q4"; -- WHEN m IN (6, 7, 8)
    END CASE;
RETURN fiscal_quarter;
END
