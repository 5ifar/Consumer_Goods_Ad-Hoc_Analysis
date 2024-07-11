# <img src="https://miro.medium.com/v2/resize:fit:1400/1*8bUjUiCWk0VhS8-lgAj0Og.png" width="4%" height="4%"> Consumer Goods: Ad-Hoc Analysis Phase-wise Implementation

---

## Phases of Implementation
- [1. Data Import](#1-data-import)
- [2. Data Cleaning](#2-data-cleaning)
- [3. Database Design](#3-database-design)
- [4. Calculate Fiscal Year & Fiscal Quarter using Functions](#4-calculate-fiscal-year--fiscal-quarter-using-functions)

---

## 1. Data Import
Importing Data from Database:

- AtliQ Hardware Database: atliq-db.sql
- Server Tab → Data Import → Import from Self-contained File → Select Database file from directory → Import Progress Tab → Start Import → Once complete, Refresh Schema List
- Database Schema Name: gdb0041     |     Total Data: Around 2,000,000 records
- Set the gdb0041 as the default database schema for all queries by double clicking or right click & set default schema

---

## 2. Data Cleaning
The following steps were taken to clean the data:

- **Step 1:** Imported DB and loaded the data for 9 tables: dim_customer, dim_product, fact_forecast_monthly, fact_freight_cost, fact_gross_price, fact_manufacturing_cost, fact_post_invoice_deductions, fact_pre_invoice_deductions & fact_sales_monthly.

- **Step 2:** Reviewed size of the dataset:
```sql
SELECT COUNT(*) FROM dim_customer; -- 209 records
SELECT COUNT(*) FROM dim_product; -- 397 records
SELECT COUNT(*) FROM fact_forecast_monthly; -- 1885941 records
SELECT COUNT(*) FROM fact_freight_cost; -- 135 records
SELECT COUNT(*) FROM fact_gross_price; -- 1182 records
SELECT COUNT(*) FROM fact_manufacturing_cost; -- 1182 records
SELECT COUNT(*) FROM fact_post_invoice_deductions; -- 2063076 records
SELECT COUNT(*) FROM fact_pre_invoice_deductions; -- 1045 records
SELECT COUNT(*) FROM fact_sales_monthly; -- 1425706 records
```

- **Step 3:** Reviewed Column datatypes. Used the tool icon in table flash queries to review datatypes. SQL query below can also be used to query datatypes in result grid. Edit & Repeat for all 9 tables.
```sql
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customer'; -- change table name as required
```

- **Step 4:** Dropped redundant columns (index_id from fact_sales_monthly & fact_forecast_monthly) that are not useful for our analysis.
```sql
ALTER TABLE fact_sales_monthly DROP COLUMN index_id;
ALTER TABLE fact_forecast_monthly DROP COLUMN index_id;
```

- **Step 5:** Searched for NULL values by counting the number of rows with Null values, Zeros or Wrong values. No such values were found in any of the 9 tables.
```sql
SELECT COUNT(*) FROM dim_customer WHERE customer_code IS NULL OR customer_code = 0 OR customer IS NULL OR platform IS NULL OR channel IS NULL OR market IS NULL OR sub_zone IS NULL OR region IS NULL;
SELECT COUNT(*) FROM dim_product WHERE product_code IS NULL OR division IS NULL OR segment IS NULL OR category IS NULL OR product IS NULL OR variant IS NULL;
SELECT COUNT(*) FROM fact_forecast_monthly WHERE date IS NULL OR fiscal_year IS NULL OR product_code IS NULL OR customer_code IS NULL OR forecast_quantity IS NULL;
SELECT COUNT(*) FROM fact_freight_cost WHERE market IS NULL OR fiscal_year IS NULL OR freight_pct IS NULL OR freight_pct = 0 OR other_cost_pct IS NULL OR other_cost_pct = 0;
SELECT COUNT(*) FROM fact_gross_price WHERE product_code IS NULL OR fiscal_year IS NULL OR gross_price IS NULL OR gross_price = 0;
SELECT COUNT(*) FROM fact_manufacturing_cost WHERE product_code IS NULL OR cost_year IS NULL OR manufacturing_cost IS NULL OR manufacturing_cost = 0;
SELECT COUNT(*) FROM fact_post_invoice_deductions WHERE customer_code IS NULL OR customer_code = 0 OR product_code IS NULL OR date IS NULL OR discounts_pct IS NULL OR other_deductions_pct IS NULL;
SELECT COUNT(*) FROM fact_pre_invoice_deductions WHERE customer_code IS NULL OR customer_code = 0 OR fiscal_year IS NULL OR pre_invoice_discount_pct IS NULL;
SELECT COUNT(*) FROM fact_sales_monthly WHERE date IS NULL OR product_code IS NULL OR customer_code IS NULL OR customer_code = 0 OR sold_quantity IS NULL;
```

- **Step 6:** Inspected dimension tables - dim_customer & dim_product tables for duplicate values based on Unique Primary Key. No duplicates were found.
```sql
SELECT customer_code, COUNT(customer_code) as duplicate_count
FROM dim_customer
GROUP BY customer_code
HAVING COUNT(customer_code) > 1 ;

SELECT product_code, COUNT(product_code) as duplicate_count
FROM dim_product
GROUP BY product_code
HAVING COUNT(product_code) > 1 ;
```

- **Step 7:** Trimmed the String datatype categorical columns to remove any existing visible/invisible white, leading and trailing spaces.
```sql
UPDATE dim_customer SET platform = TRIM(platform);
UPDATE dim_customer SET channel = TRIM(channel);
UPDATE dim_customer SET market = TRIM(market);
UPDATE dim_customer SET sub_zone = TRIM(sub_zone);
UPDATE dim_customer SET region = TRIM(region);

UPDATE dim_product SET division = TRIM(division);
UPDATE dim_product SET segment = TRIM(segment);
UPDATE dim_product SET category = TRIM(category);
UPDATE dim_product SET variant = TRIM(variant);
```

---

## 3. Database Design
...To be added...

---

## 4. Calculate Fiscal Year & Fiscal Quarter using Functions
### Fiscal Year:

The Fiscal Year cycle for AtliQ Hardware spans from September through August. I only have calendar date data in all of my columns, so I’ll need to calculate the FY. In this case I’ll have to add 4 months to the Calendar Date and the Year part of the new date will tell me the Fiscal year. E.g. Sep 2021 + 4 months = Jan 2022 → FY 22. I’ll use the DATE_ADD function for this use case.

Logic: Add 4 Months and extract Year component → SQL Code: FY = YEAR(DATE_ADD(date, INTERVAL 4 MONTH))

Now instead of repeating this code everywhere and making my queries unnecessarily longer, I can setup a custom User-defined SQL function to automate this calculation.

DB gdb0041 → Functions → Create Function:

```sql
CREATE FUNCTION `get_fiscal_year` (
	calendar_date DATE
)
RETURNS INTEGER
DETERMINISTIC
BEGIN
	DECLARE fiscal_year INT;
	SET fiscal_year = YEAR(DATE_ADD(calendar_date, INTERVAL 4 MONTH));
RETURN fiscal_year;
END
```

### Fiscal Quarter:

The Fiscal Quarter depends on the months. For AtliQ Fiscal Year spans from September through August, Quarter 1 will be September, October & November. Quarter 2 will be December, January & February. Quarter 3 will be March, April & May. Quarter 4 will be June, July & August.

Logic: If Month number: 9, 10 , 11 then Q1; 12, 1, 2 then Q2; 3, 4, 5 then Q3; 6, 7, 8 then Q4. → SQL Function used: MONTH(date)

DB gdb0041 → Functions → Create Function:

```sql
CREATE FUNCTION `get_fiscal_quarter`(
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
```


