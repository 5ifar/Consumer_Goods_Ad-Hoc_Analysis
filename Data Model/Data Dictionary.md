# Data Dictionary

## Data Domain: Finance & Supply Chain

### 1. dim_customer: 209 records | 7 columns

|Column name|Data type|Constraint|
|-|-|-|
|customer_code|int|Primary Key|
|customer|varchar(150)|Non-Nullable|
|platform|varchar(45)|Non-Nullable|
|channel|varchar(45)|Non-Nullable|
|market|varchar(45)|Nullable|
|sub_zone|varchar(45)|Nullable|
|region|varchar(45)|Nullable|

### 2. dim_product: 397 records | 6 columns

|Column name|Data type|Constraint|
|-|-|-|
|product_code|varchar(45)|Primary Key|
|product|varchar(200)|Non-Nullable|
|variant|varchar(45)|Nullable|
|category|varchar(45)|Non-Nullable|
|segment|varchar(45)|Non-Nullable|
|division|varchar(45)|Non-Nullable|

### 3. fact_forecast_monthly: 1,880,064 records | 5 columns

|Column name|Data type|Constraint|
|-|-|-|
|date|date|Non-Nullable|
|fiscal_year|year|Nullable|
|product_code|varchar(45)|Non-Nullable|
|customer_code|int|Non-Nullable|
|forecast_quantity|int|Non-Nullable|

### 4. fact_freight_cost: 135 records | 4 columns

|Column name|Data type|Constraint|
|-|-|-|
|market|varchar(45)|Primary Key|
|fiscal_year|year|Primary Key|
|freight_pct|decimal(5,4)|Non-Nullable|
|other_cost_pct|decimal(5,4)|Non-Nullable|

### 5. fact_gross_price: 1,182 records | 3 columns

|Column name|Data type|Constraint|
|-|-|-|
|product_code|varchar(45)|Primary Key|
|fiscal_year|year|Primary Key|
|gross_price|decimal(15,4)|Non-Nullable|

### 6. fact_manufacturing_cost: 1,182 records | 3 columns

|Column name|Data type|Constraint|
|-|-|-|
|product_code|varchar(45)|Primary Key|
|cost_year|year|Primary Key|
|manufacturing_cost|decimal(15,4)|Non-Nullable|

### 7. fact_post_invoice_deductions: 2,057,704 records | 5 columns

|Column name|Data type|Constraint|
|-|-|-|
|customer_code|int|Primary Key|
|product_code|varchar(45)|Primary Key|
|date|date|Primary Key|
|discounts_pct|decimal(5,4)|Non-Nullable|
|other_deductions_pct|decimal(5,4)|Non-Nullable|

### 8. fact_pre_invoice_deductions: 1,045 records | 3 columns

|Column name|Data type|Constraint|
|-|-|-|
|customer_code|int|Primary Key|
|fiscal_year|year|Primary Key|
|pre_invoice_discount_pct|decimal(5,4)|Non-Nullable|

### 9. fact_sales_monthly: 1,436,905 records | 5 columns

|Column name|Data type|Constraint|
|-|-|-|
|date|date|Primary Key|
|fiscal_year|year|Nullable|
|customer_code|int|Primary Key|
|product_code|varchar(45)|Primary Key|
|sold_quantity|int|Non-Nullable|

---
