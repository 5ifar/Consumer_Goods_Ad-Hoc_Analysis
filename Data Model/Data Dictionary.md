# Data Dictionary

## Data Domain: Finance & Supply Chain

### 1. dim_customer: 209 records | 7 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|customer_code|int|Primary Key|Unique code for the customer|
|customer|varchar(150)|Non-Nullable|Name of the customer|
|platform|varchar(45)|Non-Nullable|Store platform of the customer|
|channel|varchar(45)|Non-Nullable|Channel for store platform of the customer|
|market|varchar(45)|Nullable|Country of operation for the customer|
|sub_zone|varchar(45)|Nullable|Geographical sub zone of the country|
|region|varchar(45)|Nullable|Geographical region of the sub zone|

### 2. dim_product: 397 records | 6 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|product_code|varchar(45)|Primary Key|Unique code for the product|
|product|varchar(200)|Non-Nullable|Name of the product|
|variant|varchar(45)|Nullable|Variant type of the product|
|category|varchar(45)|Non-Nullable|Category to which the product belongs|
|segment|varchar(45)|Non-Nullable|Segment to which the category belongs|
|division|varchar(45)|Non-Nullable|Division to which the segment belongs|

### 3. fact_forecast_monthly: 1,880,064 records | 5 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|date|date|Non-Nullable|Date of the forecast|
|fiscal_year|year|Nullable|Fiscal year of the date|
|product_code|varchar(45)|Non-Nullable|Unique code for the product|
|customer_code|int|Non-Nullable|Unique code for the customer|
|forecast_quantity|int|Non-Nullable|Quantity forecasted for the date, product and customer|

### 4. fact_freight_cost: 135 records | 4 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|market|varchar(45)|Primary Key|Country of operation for the customer|
|fiscal_year|year|Primary Key|Fiscal year of the date|
|freight_pct|decimal(5,4)|Non-Nullable|Freight cost in percentage|
|other_cost_pct|decimal(5,4)|Non-Nullable|Other costs in percentage|

### 5. fact_gross_price: 1,182 records | 3 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|product_code|varchar(45)|Primary Key|Unique code for the product|
|fiscal_year|year|Primary Key|Fiscal year of the date|
|gross_price|decimal(15,4)|Non-Nullable|Gross price for the product|

### 6. fact_manufacturing_cost: 1,182 records | 3 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|product_code|varchar(45)|Primary Key|Unique code for the product|
|cost_year|year|Primary Key|Year of the product manufacturing|
|manufacturing_cost|decimal(15,4)|Non-Nullable|Cost of manufacturing the product|

### 7. fact_post_invoice_deductions: 2,057,704 records | 5 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|customer_code|int|Primary Key|Unique code for the customer|
|product_code|varchar(45)|Primary Key|Unique code for the product|
|date|date|Primary Key|Date for the deduction|
|discounts_pct|decimal(5,4)|Non-Nullable|Discount value in percentage|
|other_deductions_pct|decimal(5,4)|Non-Nullable|Other deduction value in percentage|

### 8. fact_pre_invoice_deductions: 1,045 records | 3 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|customer_code|int|Primary Key|Unique code for the customer|
|fiscal_year|year|Primary Key|Fiscal year of the date|
|pre_invoice_discount_pct|decimal(5,4)|Non-Nullable|Pre invoice discount value in percentage|

### 9. fact_sales_monthly: 1,436,905 records | 5 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|date|date|Primary Key|Date of the sale|
|fiscal_year|year|Nullable|Fiscal year of the date|
|customer_code|int|Primary Key|Unique code for the customer|
|product_code|varchar(45)|Primary Key|Unique code for the product|
|sold_quantity|int|Non-Nullable|Total quantity of product sold|

---
