![etl](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/04c89862-b351-4a66-940b-d9e60c915836)

# Crowdfunding ETL Project
----
## <ins>**Introduction**</ins>

For this Extract, Transform, and Load (ETL) mini project, we build an ETL pipeline using Jupyter Notebooks, Python, Pandas, and regular expressions to process a crowdfunding data set from two Excel files; after the transformation, a Python script writes the results to four CSV files.  These files form the basis of an Entity Relationship Diagram (ERD) detailing the database table schemata and, subsequently, an SQL script for creating these database tables.  Finally, we use the Query Tool in the administration and development platform, pgAdmin4, to run the SQL script and load the CSV files into a Postgres Database. 

## <ins>**Extract**</ins>

**A snapshot of the Crowdfunding Data Set loaded into a DataFrame:**

![ETLMiniProjectTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4f67c4fa-6e27-4e65-ac28-e62508ca6525)

**A snapshot of the Contacts Data Set loaded into a DataFrame:**

![ETLMiniProjectTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/f0d6b80f-ea60-404a-8b23-b03eca2ae0d3)

To begin, the Python Script in the IPython Notebook, ETLMiniProject_NGeorge_SSmith.ipynb, reads two MS Excel files, crowdfunding.xlsx and contacts.xlsx, into Pandas DataFrames using the DataFrame method, read_excel.  This method allows us to set data types upon extraction through a predefined Python Dictionary, which precludes the need to explicitly change data types later.  From the Crowdfunding DataFrame, the script splits the categories and subcategories from a single column then finds their unique values, sorts them alphabetically, and places them into lists; the ensuing DataFrames also possess sequential indices.

![ETLMiniProjectTable131CategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6ccfe277-9d7c-4812-9084-539126667c66)![ETLMiniProjectTable132SubcategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/bc08a267-e89b-4f27-b5c0-5f641c6548b6)


## <ins>**Transform**</ins>

Next, the Python script takes a copy of the Crowdfunding DataFrame, converts Coordinated Universal Times (UTCs) for launch and end dates to date format (the UTC timestamps are integers representing seconds since January 1, 1971), merges the DataFrame with the Category and Subcategory DataFrames, drops any unwanted columns, and renames and reorders the remaining ones to create the Campaign DataFrame.

The process is similar for the Contacts DataFrame except that all the data is fused together in a single column requiring step-by-step extrication with regular expressions (see below).

**Snapshots of the Contacts Data Set transformation:**

![ETLMiniProjectTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/6b8ecf71-d806-45f8-aa9f-09bb711ef7e4)
![ETLMiniProjectTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/32608a58-aaee-4e70-946b-f3917368650a)
![ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/a23236fb-e8ee-4548-87bb-41943cc0bfda)
![ETLMiniProjectTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/63003a84-e30c-4e4d-ad09-344ca63ed021)
![ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b85c4ee8-4262-43d9-8e95-22323adf9e20)
![ETLMiniProjectTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/7c8fd19e-3335-447a-a16b-c81519a1efa3)

After completing the transformation phase, the script exports the Category, Subcategory, Contacts, and Campaign DataFrames to four CSV files: category.csv, subcategory.csv, contacts.csv, campaign.csv.

## <ins>**Load**</ins>

After studying the four CSV files, we design our database table schemata in an Entity-Relationship Diagram (ERD) using Quick DBD to define data types, primary keys, and foreign keys.

**A snapshot of the Postgres Database's ERD:**

<img width="1369" alt="Screenshot 2023-09-23 at 12 32 42 AM" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b35c4911-f314-4884-8f3e-71d8910611d2">

From the ERD and taking into account the order of tables from foreign keys, we write an SQL script, crowdfunding_db_schema.sql, and run it with pgAdmin4's Query Tool before using pgAdmin4 again to import the CSV files into the Postgres Database, crowdfunding_db.

<img width="688" alt="PostgresDBTable_category" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/4496bce8-53eb-406e-9091-1fb0dd5aa9b5">

<img width="494" alt="PostgresDBTable_subcategory" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/d07b5b04-9ae0-429d-b547-db4f1b3d0aec">

<img width="772" alt="PostgresDBTable_contacts" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/b7eb58ec-937a-44f6-b209-9cd10b8040c5">

<img width="2036" alt="PostgresDBTable_campaign" src="https://github.com/njgeorge000158/Crowdfunding_ETL/assets/137228821/1d3dc4ad-8c76-4f90-9687-203144fe6428">

## <ins>**Conclusion**</ins>

In closing, this exercise has solid real-world applications as data is often dispersed with inconvenient and incompatible formats. To familiarize us with the appropriate practices, this project extracts, transforms, and loads a crowdfunding data set into a Postgres Database. To accomplish this feat, the transformation process uses Pandas DataFrames to split data, format data, convert data types, drop unwanted columns, and rename and reorder remaining columns. What’s more, the ERD visualizes the table schemata design, and the SQL script is the set of instructions for implementing it.  The administration platform, pgAdmin4, then creates the tables using the SQL script and loads the data into the database. Ultimately, the importance of learning these techniques cannot be understated as the ETL process is critical for producing clean, compatible, and accurate data for analysis purposes.

----

## Copyright

Nicholas J. George © 2023. All Rights Reserved.
