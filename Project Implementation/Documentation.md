# <img src="https://miro.medium.com/v2/resize:fit:1400/1*8bUjUiCWk0VhS8-lgAj0Og.png" width="4%" height="4%"> Consumer Goods: Ad-Hoc Analysis Phase-wise Implementation

---

## Phases of Implementation
- [Data Cleaning](#data-cleaning)

---

## Data Cleaning
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




