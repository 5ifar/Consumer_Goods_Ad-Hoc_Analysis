# <img src="https://miro.medium.com/v2/resize:fit:1400/1*8bUjUiCWk0VhS8-lgAj0Og.png" width="4%" height="4%"> Consumer Goods: Ad-Hoc Analysis

<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/AH%20Consumer%20Goods%20-%20Ad%20Hoc%20Analysis%20Project%20Thumbnail%2BIcon.png" width="100%" height="100%"> </div>

This repository serves as my documentation for the Consumer Goods: Ad-Hoc Analysis - MySQL Project.
It was created as part of [Resume Project Challenge 4: Provide Insights to Management in Consumer Goods Domain](https://codebasics.io/challenge/codebasics-resume-project-challenge/7) by [Codebasics](https://codebasics.io/).

The entire project has been implemented using MySQL Workbench 8.0 CE.

The project raw data files have not been uploaded to this repository in compliance with Codebasics Data & Content Distribution Policy.

---

## Contents:
Please find the sectional links for the project below:
- [Introduction to AtliQ Hardware](#introduction-to-atliq-hardware)
  - [Project Objective](#project-objective)
- [Tools used & Methodologies implemented](#tools-used)
- [About the Dataset](#about-the-dataset)
  - [Data Dictionary](#data-dictionary)
  - [Data Integrity](#data-integrity)
  - [Data Model - ERD](#data-model---erd)
- [Project Implementation](#project-implementation)
- [Ad-Hoc Analysis Insights](#ad-hoc-analysis-insights)
- [Presentation](#presentation)
- [Conclusion](#conclusion)

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
Business growth analysis is essential for any company that wants to remain competitive and successful in the long term.

The goal is to write effective SQL queries to answer 10 ad-hoc business requests from the Data Analytics Director, aiming to secure valuable insights into the consumer goods sector. By fulfilling these different ad-hoc requests, I delivered specific answers to important business questions enabling the company to understand its product portfolio, sales trends across diverse customer segments and a monthly overview of products sold.

## Tools used:
1. MySQL Workbench - for Data Cleaning, Data Manipulation, Normalization and Analysis process
2. Datawrapper - to create data visualizations
3. Miro - to create Entity Relationship Diagram (ERD)
4. Powerpoint - to create project presentation
5. GitHub - for documentation

## Skills & Methodologies implemented:
1. Data Cleaning - **CRUD Operations**
2. Data Manipulation - **Sub Queries, CTEs (Common Table Expression), Views, Temporary tables, Window Functions, UDFs (User-defined Functions), Stored Procedures and Database Triggers**
3. Database Modelling and Normalization - **ERD**
4. Exploratory Data Analysis - **Selection, Filtering, Aggregation, Grouping, Joining, Conditional Expressions**
5. Data Visualization
6. Documentation

---

## About the Dataset:
### Data Sources: Finance & Supply Chain
The dataset contains 9 tables in total, namely -
- dim_customer: 209 records | 7 columns
- dim_product: 397 records | 6 columns
- fact_forecast_monthly: 1,880,064 records | 5 columns
- dim_freight_cost: 135 records | 4 columns
- dim_gross_price: 1,182 records | 3 columns
- dim_manufacturing_cost: 1,182 records | 3 columns
- dim_post_invoice_deductions: 2,057,704 records | 5 columns
- dim_pre_invoice_deductions: 1,045 records | 3 columns
- fact_sales_monthly: 1,436,905 records | 5 columns

### Data Dictionary:
[Link to the Data Dictionary Documentation](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Data%20Model/Data%20Dictionary.md)

### Data Model - ERD:
[Link to the Data Model - ERD](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Data%20Model/AtliQ%20Hardware%20ERD%20Updated.jpg)

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
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/atliq-exclusive-apac-markets.png" width="30%" height="30%"> </div>

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
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/unique-products-2020-vs-2021.png" width="20%" height="20%"> </div>

### 3. Provide a report with all the unique product counts for each segment and sort them in descending order of product counts.

```sql
SELECT 
	segment,
	COUNT(product_code) AS prod_cnt
FROM dim_product
GROUP BY segment
ORDER BY prod_cnt DESC;
```
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/unique-product-count-by-segments.png" width="50%" height="50%"> </div>

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
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/product-portfolio-growth-by-segments.png" width="50%" height="50%"> </div>

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
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/highest-%26-lowest-manufacturing-cost-product.png" width="30%" height="30%"> </div>

### 6. Generate a report which contains the top 5 customers who received a higher than average pre-invoice discount % for the fiscal year 2021 in the Indian market.

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
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/high-pre-invoice-discount-customers.png" width="50%" height="50%"> </div>

### 7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. 
This analysis helps to get an idea of low and high-performing months and take strategic decisions.

```sql
-- Method 1: Using the pre-configured gross_sales view.
SELECT
	CONCAT(MONTHNAME(month), ' (', YEAR(month), ')') AS month,
	fiscal_year,
	SUM(gross_sales) AS gross_sales_amount
FROM gross_sales
WHERE customer = "Atliq Exclusive"
GROUP BY month, fiscal_year
ORDER BY gross_sales_amount DESC;

-- Method 2: Without using any pre-configured view.
SELECT 
	DATE_FORMAT( fsm.date, '%M (%Y)' ) AS Month, 
	fsm.fiscal_year AS Fiscal_Year, 
	ROUND( SUM( (fsm.sold_quantity * fgp.gross_price) ), 2 ) AS Gross_Sales_Amount
FROM fact_sales_monthly fsm
JOIN dim_customer AS dc ON dc.customer_code = fsm.customer_code
JOIN fact_gross_price AS fgp ON fgp.product_code = fsm.product_code AND fgp.fiscal_year = fsm.fiscal_year
WHERE dc.customer = 'Atliq Exclusive'
GROUP BY Month, Fiscal_Year
ORDER BY Fiscal_Year;
```
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/atliq-exclusive-monthly-gross-sales-report.png" width="50%" height="50%"> </div>

### 8. Which quarter of 2020, got the maximum total sold quantity?

```sql
-- Method 1: Using the pre-configured get_fiscal_quarter function.
SELECT 
	get_fiscal_quarter(date) AS FQ,
	SUM(sold_quantity) AS total_sold_qty
FROM fact_sales_monthly
WHERE fiscal_year = 2020
GROUP BY FQ
ORDER BY total_sold_qty DESC;

-- Method 2: Without using any function.
SELECT
	CASE
		WHEN date BETWEEN '2019-09-01' AND '2019-11-01' THEN 'Q1'
		WHEN date BETWEEN '2019-12-01' AND '2020-02-01' THEN 'Q2'
		WHEN date BETWEEN '2020-03-01' AND '2020-05-01' THEN 'Q3'
		WHEN date BETWEEN '2020-06-01' AND '2020-08-01' THEN 'Q4'
	END AS FQ,
	ROUND(SUM(sold_quantity)/1000000, 2) AS total_sold_qty_mln
FROM fact_sales_monthly
WHERE fiscal_year = 2020
GROUP BY FQ
ORDER BY total_sold_qty_mln DESC;
```
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/total-sold-qty-by-fy-2020-quarter.png" width="50%" height="50%"> </div>

### 9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?

```sql
WITH channel_gs AS (
	SELECT 
		channel,
		SUM(gross_sales) AS channel_gross_sales
	FROM gross_sales AS gs
	JOIN dim_customer AS dc USING (customer_code)
	WHERE gs.fiscal_year = 2021
	GROUP BY channel
), 
overall_gs AS (
	SELECT SUM(gross_sales) AS total_gross_sales FROM gross_sales WHERE fiscal_year = 2021
)
SELECT 
	channel,
	ROUND(channel_gross_sales/1000000, 2) AS channel_gross_sales_mil,
	ROUND((channel_gross_sales/total_gross_sales)*100, 2) AS channel_gs_pct
FROM channel_gs, overall_gs
ORDER BY channel_gs_pct DESC;
```
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/channel-wise-gross-sales-contribution-fy-2021.png" width="50%" height="50%"> </div>

### 10. Get the Top 3 products in each division that have a high total sold quantity in the fiscal year 2021?

```sql
WITH prod_sold_qty AS (
	SELECT 
		dp.product_code, dp.product, dp.division,
		SUM(fsm.sold_quantity) AS total_sold_qty
	FROM fact_sales_monthly AS fsm
	JOIN dim_product AS dp USING (product_code)
	WHERE fsm.fiscal_year = 2021
	GROUP BY dp.product_code, dp.product, dp.division
), 
div_sold_qty_ranking AS (
	SELECT 
		division, product_code, product,
		total_sold_qty,
		DENSE_RANK () OVER(PARTITION BY division ORDER BY total_sold_qty DESC) AS sold_qty_div_rank
	FROM prod_sold_qty
	ORDER BY division, sold_qty_div_rank
)
SELECT * FROM div_sold_qty_ranking WHERE sold_qty_div_rank < 4;
```
<div align="center"> <img src="https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Assets/Ad-Hoc%20Insights%20Visuals/division-wise-top-3-products-by-qty-sold.png" width="50%" height="50%"> </div>

---

## Presentation:
[Link to the Project Presentation](https://github.com/5ifar/Consumer_Goods_Ad-Hoc_Analysis/blob/main/Presentation/Consumer%20Goods%20Ad-Hoc%20Analysis%20Presentation.pdf)

---

## Conclusion:
Conducted a comprehensive Ad-Hoc SQL analysis on Atliq Hardware Consumer Goods Sales, Product & Customer data. These insights will enable Atliq Hardwares to make informed decisions, optimize operations, and drive growth in the competitive computer hardware market.

Recommendations for AtliQ focused on:
1. Enhance product offerings to meet market demands by introducing trending products in lower-count segments like Desktop, Networking, and Storage segments.
2. Engage in negotiations to secure more favorable terms with high pre-invoice discount customers like Flipkart, Viveks & Ezone by implementing loyalty programs or volume-based incentives to maintain customer satisfaction while reducing the average discount rate thereby improving profit margins.
3. Implement an strategic marketing strategy across multiple channels strengthening key sales channel relationships and develop a strong core brand identity to communicate unique value.
4. Offer competitive pricing and attractive promotions.
5. Need for targeted R&D investments

---
