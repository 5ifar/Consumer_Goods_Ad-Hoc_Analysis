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




