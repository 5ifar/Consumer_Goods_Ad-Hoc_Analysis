# <img src="https://miro.medium.com/v2/resize:fit:1400/1*8bUjUiCWk0VhS8-lgAj0Og.png" width="4%" height="4%"> Consumer Goods: Ad-Hoc Analysis
This repository serves as my documentation for the Consumer Goods: Ad-Hoc Analysis - MySQL Project.
It was created as a self-learning project for the course: [SQL Beginner to Advanced For Data Professionals](https://codebasics.io/courses/sql-beginner-to-advanced-for-data-professionals) by [Codebasics](https://codebasics.io/).

It showcases my competancy to work with MySQL Workbench and demonstrates my proficiency in essential SQL concepts like ........

.......to be inserted.......

The entire project has been implemented using MySQL Workbench 8.0 CE.

The project raw data files have not been uploaded to this repository in compliance with Codebasics Data & Content Distribution Policy.

---

## Introduction to AtliQ Hardware:
**Domain:** Consumer Goods | **Functions:** Finance & Supply Chain

- AtliQ Hardwares is company that sells computer hardware and peripherals like PC, mouse, printer etc. to clients across the world.
- They have a major B2B business model wherein they sell to stores like Croma, Best Buy, Staples, Flipkart etc. who then sell it to the end users (consumers). These stores are their main customers.
- They sell through 3 channels: Retailer, Direct and Distributor.
- AtliQ Hardwares’s Customers are of two types. Both these Platforms are called Retailer channels.
  1. Brick & Mortar Customer: Actual physical stores e.g. Croma, Best Buy
  2. E-commerce Customer: Online websites E.g. Amazon, Flipkart
- AtliQ Hardwares also has a minor B2C business model wherein they own stores: AtliQ E-store and AtliQ Exclusive. These are called Direct channels.
- They also have Distributors in some countries with restricted trade. E.g. Neptune

## Project Objective:
...to be added...

## Contents:
Please find the resource links for the project below:
- [Introduction to AtliQ Hardware](#introduction-to-atliq-hardware)
  - [...Project Objective to be added...]()
- [...Code Files + Dashboards + Data Model to be added...]
- [Tools used & Methodologies implemented](#tools-used)
- [About the Dataset](#about-the-dataset)
  - [Data Dictionary](#data-dictionary)
  - [Data Integrity](#data-integrity)
- [...Data Model - ERD to be added...]()
- [Project Implementation](#project-implementation)
- [...Analysis Insights to be added...]()

## Tools used:
1. MySQL - for Data Cleaning, Data Manipulation, Normalization and Analysis process
2. Datawrapper - to create data visualizations
3. Power BI - to create dashboard
4. GitHub - for documentation

## Skills & Methodologies implemented:
1. Data Cleaning
2. Data Manipulation - Functions, Views, Stored Procedures, Triggers, Temporary Tables, Helper Tables
3. Database Modelling and Normalization - ERD
4. Exploratory Data Analysis
5. Data Visualization
6. Documentation

---

## About the Dataset:
### Data Sources: Finance & Supply Chain
The dataset contains 9 tables in total, namely -
- dim_customer: 209 records | 7 columns
- dim_product: 397 records | 6 columns
- fact_forecast_monthly: 1,880,064 records | 5 columns
- fact_freight_cost: 135 records | 4 columns
- fact_gross_price: 1,182 records | 3 columns
- fact_manufacturing_cost: 1,182 records | 3 columns
- fact_post_invoice_deductions: 2,057,704 records | 5 columns
- fact_pre_invoice_deductions: 1,045 records | 3 columns
- fact_sales_monthly: 1,436,905 records | 5 columns

### Data Dictionary:
[Link to the Data Dictionary Documentation](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Data%20Model/Data%20Dictionary.md)

## Data Integrity:
ROCCC Evaluation:
- Reliability: MED - The raw dataset is created and updated by Codebasics. It has total 9 files. All of them were utilized in the analysis.
- Originality: HIGH - First party provider (Codebasics)
- Comprehensiveness: HIGH - Total 9 Files with a total of around 5.3 Million records were provided. Dataset contains multiple dimension parameters for Customers & Products as well as comprehensive Finance & Supply Chain transaction data.
- Current: LOW - Dataset was updated upto FY 2022 i.e almost 2 years old. So its not very relevant. Any trends observed and insights gained need to be comprehended as a general (not FY-specific) trend.
- Citation: LOW - No official citation/reference available.

---

## Project Implementation:
Please find the documentation links for the project phase-wise implementation below:
- [1. Data Import](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#1-data-import)
- [2. Data Cleaning](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#2-data-cleaning)
- [3. Database Design](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#3-database-design)
- [4. Calculate Fiscal Year & Fiscal Quarter using Functions](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#4-calculate-fiscal-year--fiscal-quarter-using-functions)
  - [Fiscal Year](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#fiscal-year)
  - [Fiscal Quarter](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#fiscal-quarter)
- [5. Finance Analytics](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#5-finance-analytics)
  - [5.1 Gross Sales Report: Croma FY 2021 Monthly Product Transactions](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#51-gross-sales-report-croma-fy-2021-monthly-product-transactions)
  - [5.2 Gross Sales Report: Croma Monthly Gross Sales](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#52-gross-sales-report-croma-monthly-gross-sales)
  - [5.3 Gross Sales Report: Croma Yearly Gross Sales](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#53-gross-sales-report-croma-yearly-gross-sales)
  - [5.4 Stored Procedure: Monthly Gross Sales Report](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#54-stored-procedure-monthly-gross-sales-report)
  - [5.5 Stored Procedure: Market Badge](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#55-stored-procedure-market-badge)
- [6. Query Optimization](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#6-query-optimization)
  - [6.1 Creating dim_date table](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#61-creating-dim_date-table)
  - [6.2 Modifying fact_sales_monthly table to include fiscal_year](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#62-modifying-fact_sales_monthly-table-to-include-fiscal_year)
- [7. Configuring Database Views](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#7-configuring-database-views)
  - [7.1 View: Gross Sales](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#71-view-gross-sales)
  - [7.2 View: Sales Pre Invoice Discount](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#72-view-sales-pre-invoice-discount)
  - [7.3 View: Sales Post Invoice Discount](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#73-view-sales-post-invoice-discount)
  - [7.4 View: Net Sales](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#74-view-net-sales)
- [8. Top Customers, Products & Markets Reports](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#8-top-customers-products--markets-reports)
  - [8.1 Top Markets report for a given FY by Net Sales (in millions)](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#81-top-markets-report-for-a-given-fy-by-net-sales-in-millions)
  - [8.2 Top Customers report for a given FY by Net Sales (in millions)](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#82-top-customers-report-for-a-given-fy-by-net-sales-in-millions)
  - [8.3 Top Products report for a given FY by Net Sales (in millions)](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#83-top-products-report-for-a-given-fy-by-net-sales-in-millions)
  - [8.4 Top Customer-wise Net Sales % contribution report for a given FY](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#84-top-customer-wise-net-sales--contribution-report-for-a-given-fy)
  - [8.5 Top Customer-wise Net Sales % contribution report per Region for a given FY](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#85-top-customer-wise-net-sales--contribution-report-per-region-for-a-given-fy)
  - [8.6 Top Products report in each Division for a given FY by their Quantity Sold](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#86-top-products-report-in-each-division-for-a-given-fy-by-their-quantity-sold)
  - [8.7 Top Markets report in each Region for a given FY by their Gross Sales](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#87-top-markets-report-in-each-region-for-a-given-fy-by-their-gross-sales)
- [9. Supply Chain Analytics](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#9-supply-chain-analytics)
  - [9.1 Actual & Estimate Sales Qty Helper Table](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#91-actual--estimate-sales-qty-helper-table)
  - [9.2 Auto Updating Actual & Estimate Sales Qty Helper Table using Database Triggers](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#92-auto-updating-actual--estimate-sales-qty-helper-table-using-database-triggers)
  - [9.3 Forecast Accuracy Report for a given FY by Customer](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#93-forecast-accuracy-report-for-a-given-fy-by-customer)
  - [9.4 Comparative Forecast Accuracy Report across consecutive FY by Customer](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Project%20Implementation/Documentation.md#94-comparative-forecast-accuracy-report-across-consecutive-fy-by-customer)

---

## Ad-Hoc Analysis Insights:
### 1. Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.

```sql
SELECT 
	DISTINCT(market) AS atliq_exclusive_markets 
FROM gdb0041.dim_customer
WHERE customer = "Atliq Exclusive" AND region = "APAC";
```

### 2. What is the percentage increase of unique product in 2021 vs. 2020?

```sql
WITH uniqprod_2020 AS (
	SELECT COUNT(DISTINCT(product_code)) AS prodcnt_2020 FROM fact_sales_monthly WHERE fiscal_year = 2020
), uniqprod2021 AS (
	SELECT COUNT(DISTINCT(product_code)) AS prodcnt_2021 FROM fact_sales_monthly WHERE fiscal_year = 2021
)
SELECT 
	prodcnt_2020, prodcnt_2021, 
	ROUND(((prodcnt_2021 - prodcnt_2020)/prodcnt_2020)*100, 2) AS prodcnt_inc_pct 
FROM uniqprod_2020, uniqprod2021;
```

### 3. Provide a report with all the unique product counts for each segment and sort them in descending order of product counts.

```sql
SELECT 
	segment,
	COUNT(product_code) AS prod_cnt
FROM dim_product
GROUP BY segment
ORDER BY prod_cnt DESC;
```

### 4. Follow-up: Which segment had the most percentage increase in unique products in 2021 vs 2020?

```sql
WITH uniqsegprod_2020 AS (
	SELECT 
		segment AS seg_2020,
		COUNT(DISTINCT(fsm.product_code)) AS prodcnt_2020
	FROM dim_product AS dp
	JOIN fact_sales_monthly AS fsm USING (product_code)
	WHERE fsm.fiscal_year = 2020
	GROUP BY segment
), 
uniqsegprod_2021 AS (
	SELECT 
		segment AS seg_2021,
		COUNT(DISTINCT(fsm.product_code)) AS prodcnt_2021
	FROM dim_product AS dp
	JOIN fact_sales_monthly AS fsm USING (product_code)
	WHERE fsm.fiscal_year = 2021
	GROUP BY segment
)
SELECT
	seg_2020 AS segment,
	prodcnt_2020, prodcnt_2021,
	ROUND(((prodcnt_2021-prodcnt_2020)/prodcnt_2020)*100, 2) AS segprodcnt_inc_pct
FROM uniqsegprod_2020 AS usp_2020, uniqsegprod_2021 AS usp_2021
WHERE usp_2020.seg_2020 = usp_2021.seg_2021
ORDER BY segprodcnt_inc_pct DESC;
```

### 5. List the products with the highest and lowest manufacturing costs.

```sql
WITH prod_manufacost AS (
	SELECT
		product_code, product, manufacturing_cost
	FROM dim_product
	JOIN fact_manufacturing_cost USING (product_code)
)
(SELECT *, "Highest Cost" AS overall FROM prod_manufacost ORDER BY manufacturing_cost DESC LIMIT 1)
UNION
(SELECT *, "Lowest Cost" AS overall FROM prod_manufacost ORDER BY manufacturing_cost ASC LIMIT 1);
```

### 6. Generate a report which contains the top 5 customers who received a higher than average pre_invoice_discount_pct for the fiscal year 2021 in the Indian market.

```sql
SELECT 
	fprid.customer_code, dc.customer,
	fprid.pre_invoice_discount_pct AS high_pre_inv_discount_pct
FROM dim_customer AS dc
JOIN fact_pre_invoice_deductions AS fprid USING (customer_code)
WHERE fprid.fiscal_year = 2021 AND dc.market = "India" AND pre_invoice_discount_pct > (SELECT AVG(pre_invoice_discount_pct) FROM fact_pre_invoice_deductions WHERE fiscal_year = 2021)
ORDER BY high_pre_inv_discount_pct DESC 
LIMIT 5
```

### 7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. 
This analysis helps to get an idea of low and high-performing months and take strategic decisions.

```sql
SELECT
	CONCAT(MONTHNAME(month), ' (', YEAR(month), ')') AS month,
	fiscal_year,
	SUM(gross_sales) AS gross_sales_amount
FROM gross_sales
WHERE customer = "Atliq Exclusive"
GROUP BY month, fiscal_year
ORDER BY gross_sales_amount DESC;
```
