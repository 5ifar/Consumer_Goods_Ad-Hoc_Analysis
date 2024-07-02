# <img src="https://miro.medium.com/v2/resize:fit:1400/1*8bUjUiCWk0VhS8-lgAj0Og.png" width="4%" height="4%"> Consumer Goods: Ad-Hoc Analysis
This repository serves as my documentation for the Consumer Goods: Ad-Hoc Analysis - MySQL Project.
It was created as a self-learning project for the course: [SQL Beginner to Advanced For Data Professionals](https://codebasics.io/courses/sql-beginner-to-advanced-for-data-professionals) by [Codebasics](https://codebasics.io/).

It showcases my competancy to work with MySQL Workbench and demonstrates my proficiency in essential SQL concepts like ........

.......to be inserted.......

The entire project has been implemented using MySQL Workbench 8.0 CE.

The project raw data files have not been uploaded to this repository in compliance with Codebasics Data & Content Distribution Policy.

---

## Introduction:
**Domain:** Consumer Goods | **Functions:** Finance & Supply Chain

- AtliQ Hardwares is company that sells computer hardware and peripherals like PC, mouse, printer etc. to clients across the world.
- They have a major B2B business model wherein they sell to stores like Croma, Best Buy, Staples, Flipkart etc. who then sell it to the end users (consumers). These stores are their main customers.
- They sell through 3 channels: Retailer, Direct and Distributor.
- AtliQ Hardwares’s Customers are of two types. Both these Platforms are called Retailer channels.
  1. Brick & Mortar Customer: Actual physical stores e.g. Croma, Best Buy
  2. E-commerce Customer: Online websites E.g. Amazon, Flipkart
- AtliQ Hardwares also has a minor B2C business model wherein they own stores: AtliQ E-store and AtliQ Exclusive. These are called Direct channels.
- They also have Distributors in some countries with restricted trade. E.g. Neptune

## Table of Contents:
Please find the resource links for the project below:
- [Introduction](#introduction)
  - [...Objective to be added...]()
- [...Code Files + Dashboards + Data Model to be added...]
- [Tools used & Methodologies implemented](#tools-used)
- [About the Dataset](#about-the-dataset)
  - [...Data Dictionary to be added...]()
  - [...Data Integrity to be added...]()
- [...Data Cleaning to be added...]()
- [...Data Model - ERD to be added...]()
- [...Implementation to be added...]()
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
-to be added-

## Data Integrity:
ROCCC Evaluation:
- Reliability: MED - The raw dataset is created and updated by Codebasics. It has total 9 files. All of them were utilized in the analysis.
- Originality: HIGH - First party provider (Codebasics)
- Comprehensiveness: HIGH - Total 9 Files with a total of around 5.3 Million records were provided. Dataset contains multiple dimension parameters for Customers & Products as well as comprehensive Finance & Supply Chain transaction data.
- Current: LOW - Dataset was updated upto FY 2022 i.e almost 2 years old. So its not very relevant. Any trends observed and insights gained need to be comprehended as a general (not FY-specific) trend.
- Citation: LOW - No official citation/reference available.
