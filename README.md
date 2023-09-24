![6393298e18f50e62a1657530_ETL process DataChannel-p-2600](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/c8d9749c-5e8c-4d21-9035-f2e81d420908)
# Crowdfunding ETL Project
## Group 8: N. James George, Stephen Smith
----
## <ins>Introduction</ins>

For this Extract, Transform, and Load (ETL) mini project, we build an ETL pipeline using Jupyter Notebooks, Python, Pandas, and regular expressions to process a crowdfunding data set from two Excel files; after the transformation, a Python script writes the results to four CSV files.  These files form the basis of an Entity Relationship Diagram (ERD) detailing the database table schemata and, subsequently, an SQL script for creating these database tables.  Finally, we use the Query Tool in the administration and development platform, pgadmin4, to run the SQL script and load the CSV files into a Postgres Database. 

<img src="https://img.shields.io/badge/Jupyter Notebook-inactive.svg?style=flat&logo=Jupyter&logoColor=orange" width="150px">&nbsp;<img src="https://img.shields.io/badge/python-inactive.svg?style=flat&logo=Python&logoColor=yellow" width="80px">&nbsp;<img src="https://img.shields.io/badge/pandas-inactive.svg?style=flat&logo=Pandas&logoColor=blueviolet" width="80px">&nbsp;<img src="https://img.shields.io/badge/RegExr-inactive.svg?style=flat&logo=data:image/png;base64,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&logoColor=blue" width="80px">&nbsp;<img src="https://img.shields.io/badge/JSON-inactive.svg?style=flat&logo=JSON&logoColor=black" width="68px">

<img src="https://img.shields.io/badge/postgres-inactive.svg?style=flat&logo=Postgresql&logoColor=blue" width="89px">

## <ins>Extract</ins>

A snapshot of the Crowdfunding Data Set loaded into a DataFrame:

![ETLMiniProjectTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4f67c4fa-6e27-4e65-ac28-e62508ca6525)

A snapshot of the Contacts Data Set loaded into a DataFrame:

![ETLMiniProjectTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/f0d6b80f-ea60-404a-8b23-b03eca2ae0d3)

To begin, the Python Script in the IPython Notebook, ETLMiniProject_NGeorge_SSmith.ipynb, reads two MS Excel files, crowdfunding.xlsx and contacts.xlsx, into Pandas DataFrames using the DataFrame method, read_excel.  This method allows us to set data types upon extraction through a predefined Python Dictionary, which precludes the need to explicitly change data types later.  From the Crowdfunding DataFrame, the script splits the categories and subcategories from a single column then finds their unique values, sorts them alphabetically, and places them into lists; the ensuing DataFrames also possess sequential indices for these lists of unique values.

![ETLMiniProjectTable131CategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6ccfe277-9d7c-4812-9084-539126667c66)![ETLMiniProjectTable132SubcategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/bc08a267-e89b-4f27-b5c0-5f641c6548b6)


## <ins>Transform</ins>

Next, the Python script takes the Crowdfunding DataFrame, converts Coordinated Universal Times (UTC) for launch and end dates to date format (the UTC timestamps are integers representing seconds since January 1, 1971), merges the DataFrame with the Category and Subcategory DataFrames, drops any unwanted columns, and renames and reorders the remaining ones to create the Campaign DataFrame.

The process is similar for the Contacts DataFrame except that all the data is fused together in a single column requiring step-by-step extrication with regular expressions (see below).

Snapshots of the transformation of the Contacts Data Set:

![ETLMiniProjectTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6b8ecf71-d806-45f8-aa9f-09bb711ef7e4)
![ETLMiniProjectTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/32608a58-aaee-4e70-946b-f3917368650a)
![ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/a23236fb-e8ee-4548-87bb-41943cc0bfda)
![ETLMiniProjectTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/63003a84-e30c-4e4d-ad09-344ca63ed021)
![ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b85c4ee8-4262-43d9-8e95-22323adf9e20)
![ETLMiniProjectTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/7c8fd19e-3335-447a-a16b-c81519a1efa3)

After completing the transformation phase, the script exports the Category, Subcategory, Contacts, and Campaign DataFrames to four CSV files: category.csv, subcategory.csv, campaign.csv, and contacts.csv

## <ins>Load</ins>

After studying the structure of the four CSV files, we design our database table schemata in an Entity-Relationship Diagram (ERD) using Quick DBD defining data types, primary keys, and foreign keys.

A snapshot of the Postgres Database's ERD:

<img width="1369" alt="Screenshot 2023-09-23 at 12 32 42 AM" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b35c4911-f314-4884-8f3e-71d8910611d2">

From the ERD, we write an SQL script, crowdfunding_db_schema.sql, taking into account the order of tables from foreign keys and run it with pgAdmin4's Query Tool before using pgAdmin4 again to import the CSV files into the Postgres Database, crowdfunding_db.

<img width="688" alt="PostgresDBTable_category" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4496bce8-53eb-406e-9091-1fb0dd5aa9b5">

<img width="494" alt="PostgresDBTable_subcategory" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/d07b5b04-9ae0-429d-b547-db4f1b3d0aec">

<img width="772" alt="PostgresDBTable_contacts" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b7eb58ec-937a-44f6-b209-9cd10b8040c5">

<img width="2036" alt="PostgresDBTable_campaign" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/1d3dc4ad-8c76-4f90-9687-203144fe6428">

## <ins>Conclusion</ins>

In summary, this exercise has solid real-world applications as data is often dispersed in a chaotic fashion with inconvenient and incompatible formats. To familiarize us with the appropriate practices, this project extracts, transforms, and loads crowdfunding data from Excel files into a Postgres Database. To accomplish this feat, the transformation process uses Pandas DataFrames to format data, split data, convert data types, drop unwanted columns, and rename and reorder remaining columns, among other practices. What’s more, the ERD visualizes the table schemata design, and the SQL script is the set of instructions for implementing it.  The administration and development platform, pgAdmin4, then creates the tables from the SQL script and loads the data into the Postgres database. Ultimately, the importance of learning these techniques cannot be understated as the ETL process is critical to establishing clean, compatible, and accurate data for analysis purposes.

----

## Copyright

N. James George, Stephen Smith © 2023. All Rights Reserved.
