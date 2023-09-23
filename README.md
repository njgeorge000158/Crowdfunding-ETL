![6393298e18f50e62a1657530_ETL process DataChannel-p-2600](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/c8d9749c-5e8c-4d21-9035-f2e81d420908)
# Crowdfunding ETL Project
## Group 8: N. James George, Stephen Smith
----
## <ins>Introduction</ins>

For this Extract, Transform, and Load (ETL) project, we build an ETL pipeline using Python, Pandas, and regular expressions to extract and transform a crowdfunding data set from two Excel files; after the transformation, a Python script in a Jupyter Notebook loads the data into four CSV files.  These files form the basis of an SQL script and Entity Relationship Diagram (ERD) detailing the database table schemata.  Finally, we use our SQL script and the Query Tool in the administration and development platform, pgadmin4, to create the database tables and upload the CSV file data into a Postgres database.

## <ins>Extract</ins>

A snapshot of the crowdfunding data set initially loaded into a DataFrame:

![ETLMiniProjectTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4f67c4fa-6e27-4e65-ac28-e62508ca6525)

A snapshot of the contacts data set initially loaded into a DataFrame:

![ETLMiniProjectTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/f0d6b80f-ea60-404a-8b23-b03eca2ae0d3)

## <ins>Transform</ins>
![ETLMiniProjectTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6b8ecf71-d806-45f8-aa9f-09bb711ef7e4)
![ETLMiniProjectTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/32608a58-aaee-4e70-946b-f3917368650a)
![ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/a23236fb-e8ee-4548-87bb-41943cc0bfda)
![ETLMiniProjectTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/63003a84-e30c-4e4d-ad09-344ca63ed021)
![ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b85c4ee8-4262-43d9-8e95-22323adf9e20)
![ETLMiniProjectTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/7c8fd19e-3335-447a-a16b-c81519a1efa3)

Using Python, Pandas, and data cleaning strategies, we have transformed the data via formatting, splitting, converting data types, and restructuring to create DataFrames that can be loaded into a postgreSQL database as a CSV file.

When finishing this step, we have 5 CSV cleaned files saved as:

contacts.csv
category.csv
subcategory.csv
capaign.csv


## <ins>Load</ins>
<img width="1369" alt="Screenshot 2023-09-23 at 12 32 42 AM" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b35c4911-f314-4884-8f3e-71d8910611d2">

In order to load the cleaned datasets as CSV files into an SQL database we started by creating an Entity Relationship Diagram (ERD) using Quick DBD website (https://www.quickdatabasediagrams.com/).

When the database schema is complete, we have saved the ERD as crowdfunding_db_relationships.png (See Fig.1) and we have saved the database schema as a PostgreSQL file named crowdfunding_db_schema.sql (https://github.com/MireyNM/Crowdfunding-ETL/blob/main/crowdfunding_db_schema.sql)

## <ins>Conclusion</ins>

----

## Copyright

N. James George, Stephen Smith © 2023. All Rights Reserved.
