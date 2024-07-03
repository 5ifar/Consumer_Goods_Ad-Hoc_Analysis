# Data Dictionary

## Data Domain: Finance & Supply Chain

### 1. dim_customer: 209 records | 7 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|customer_code|int|Primary Key|The Unique Customer Code|
|customer|varchar(150)|Non-Nullable|The Name of Customer|
|platform|varchar(45)|Non-Nullable|The Platform type of Customer|
|channel|varchar(45)|Non-Nullable|The Channel type of Customer|
|market|varchar(45)|Nullable|The Market of Operation|
|sub_zone|varchar(45)|Nullable|The Sub Zone for the Market|
|region|varchar(45)|Nullable|The Region for the Sub Zone|

### 2. dim_product: 397 records | 6 columns

|Column name|Data type|Constraint|Description|
|-|-|-|-|
|product_code|varchar(45)|Primary Key|The Unique Product Code|
|product|varchar(200)|Non-Nullable|The Name of Product|
|variant|varchar(45)|Nullable|The Variant of Product|
|category|varchar(45)|Non-Nullable|The Category of Product|
|segment|varchar(45)|Non-Nullable|The Segment for the Category|
|division|varchar(45)|Non-Nullable|The Division type of the Segment|





|||||
|||||
|||||
|||||
|||||
|||||
|||||
