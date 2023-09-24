![6393298e18f50e62a1657530_ETL process DataChannel-p-2600](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/c8d9749c-5e8c-4d21-9035-f2e81d420908)
# Crowdfunding ETL Project
## Group 8: N. James George, Stephen Smith
----
## <ins>Introduction</ins>

For this Extract, Transform, and Load (ETL) mini project, we build an ETL pipeline using Python, Pandas, and regular expressions to process a crowdfunding data set from two Excel files; after the transformation, a Python script writes the results to four CSV files.  These files form the basis of an Entity Relationship Diagram (ERD) detailing the database table schemata and, subsequently, an SQL script for creating the database tables.  Finally, we use the Query Tool in the administration and development platform, pgadmin4, to run the SQL script and upload the CSV files into a Postgres database. 

## <ins>Extract</ins>

A snapshot of the Crowdfunding Data Set loaded into a DataFrame:

![ETLMiniProjectTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4f67c4fa-6e27-4e65-ac28-e62508ca6525)

A snapshot of the Contacts Data Set loaded into a DataFrame:

![ETLMiniProjectTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/f0d6b80f-ea60-404a-8b23-b03eca2ae0d3)

To begin, the Python Script in the IPython Notebook, ETLMiniProject_NGeorge_SSmith.ipynb, reads two MS Excel files, crowdfunding.xlsx and contacts.xlsx, into Pandas DataFrames using the DataFrame method, read_excel.  This method allows us to set data types upon extraction through a predefined Dictionary, which precludes the need to explicitly change data types later with other methods (e.g., astype).  From the Crowdfunding DataFrame, the script splits the categories and subcategories from a single column then finds their unique values, sorts them alphabetically, and places them into lists; the ensuing DataFrames also possess sequential indices for these lists of unique values.

![ETLMiniProjectTable131CategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6ccfe277-9d7c-4812-9084-539126667c66)![ETLMiniProjectTable132SubcategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/bc08a267-e89b-4f27-b5c0-5f641c6548b6)


## <ins>Transform</ins>

Next, the Python script takes the Crowdfunding DataFrame, reformats integers representing seconds since January 1, 1971, to a date format, merges the DataFrame with the Category and Subcategory DataFrames, drops any unwanted columns, and reorders the remaining ones to create the Campaign DataFrame.

The process is similar for the Contacts DataFrame except that all the data is fused together in a single column requiring step-by-step extrication (see below).

Snapshots of the transformation of the contacts data set:

![ETLMiniProjectTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6b8ecf71-d806-45f8-aa9f-09bb711ef7e4)
![ETLMiniProjectTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/32608a58-aaee-4e70-946b-f3917368650a)
![ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/a23236fb-e8ee-4548-87bb-41943cc0bfda)
![ETLMiniProjectTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/63003a84-e30c-4e4d-ad09-344ca63ed021)
![ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b85c4ee8-4262-43d9-8e95-22323adf9e20)
![ETLMiniProjectTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/7c8fd19e-3335-447a-a16b-c81519a1efa3)

After finishing these transformations, the script writes the DataFrames to four CSV files: category.csv, subcategory.csv, campaign.csv, and contacts.csv

## <ins>Load</ins>

After studying the structure of the four CSV files, we design our database table schemata and visualize them in an Entity-Relationship Diagram (ERD) using Quick DBD.

A snapshot of the Postgres Database's Entity-Relationship Diagram:

<img width="1369" alt="Screenshot 2023-09-23 at 12 32 42 AM" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b35c4911-f314-4884-8f3e-71d8910611d2">

From the ERD, we write an SQL script and run it with pgAdmin4's Query Tool before using pgamdin4 again to import the data from the CSV files.

<img width="688" alt="PostgresDBTable_category" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4496bce8-53eb-406e-9091-1fb0dd5aa9b5">

<img width="494" alt="PostgresDBTable_subcategory" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/d07b5b04-9ae0-429d-b547-db4f1b3d0aec">

<img width="772" alt="PostgresDBTable_contacts" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b7eb58ec-937a-44f6-b209-9cd10b8040c5">

<img width="2036" alt="PostgresDBTable_campaign" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/1d3dc4ad-8c76-4f90-9687-203144fe6428">

## <ins>Conclusion</ins>

In summary, this exercise has solid real-world applications as data is often dispersed in inconvenient and incompatible forms.  As such, this project extracts, transforms, and loads crowdfunding data from Excel files into a Postgres database.  To accomplish this feat, the transformation process uses formatting, splitting, converting data types, dropping unwanted columns, and reordering columns, among other practices.  Also, the ERD presents a plan for creating the table schemata with an SQL script; the administration and development platform, pgadmin4, loads the data into the Postgres database.  The importance of learning these techniques cannot be understated as the ETL process is critical to establishing clean, compatible, and accurate data for analysis with any data set.

----

## Copyright

N. James George, Stephen Smith © 2023. All Rights Reserved.
