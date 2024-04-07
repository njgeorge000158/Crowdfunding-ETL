![etl](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/04c89862-b351-4a66-940b-d9e60c915836)

# Crowdfunding ETL Project
----
## <ins>**Introduction**</ins>

For this Extract, Transform, and Load (ETL) mini project, we build an ETL pipeline using Jupyter Notebooks, Python, Pandas, and regular expressions to process a crowdfunding data set from two Excel files; after the transformation, a Python script writes the results to four CSV files.  These files form the basis of an Entity Relationship Diagram (ERD) detailing the database table schemata and, subsequently, an SQL script for creating these database tables.  Finally, we use the Query Tool in the administration and development platform, pgAdmin4, to run the SQL script and load the CSV files into a Postgres Database. 

## <ins>**Extract**</ins>

**A snapshot of the Crowdfunding Data Set loaded into a DataFrame:**

![crowdfunding_etlTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/bd4e9926-3ac1-436f-a14a-a2ba1c94612a)

**A snapshot of the Contacts Data Set loaded into a DataFrame:**

![crowdfunding_etlTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/758ea194-ec39-4647-a92e-8c06e756dceb)

To begin, the Python Script in the IPython Notebook, crowdfunding_etl.ipynb, reads two MS Excel files, crowdfunding.xlsx and contacts.xlsx, into Pandas DataFrames using the DataFrame method, read_excel.  This method allows us to set data types upon extraction through a predefined Python Dictionary, which precludes the need to explicitly change data types later.  From the Crowdfunding DataFrame, the script splits the categories and subcategories from a single column then finds their unique values, sorts them alphabetically, and places them into lists; the ensuing DataFrames also possess sequential indices.

![crowdfunding_etlTable131CategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/e3296e80-494c-488f-9b0b-c0b6d8cb6b94)

![crowdfunding_etlTable132SubcategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/e91d569e-0c55-4870-92d5-4c03b77fb66f)

## <ins>**Transform**</ins>

Next, the Python script takes a copy of the Crowdfunding DataFrame, converts Coordinated Universal Times (UTCs) for launch and end dates to date format (the UTC timestamps are integers representing seconds since January 1, 1971), merges the DataFrame with the Category and Subcategory DataFrames, drops any unwanted columns, and renames and reorders the remaining ones to create the Campaign DataFrame.

The process is similar for the Contacts DataFrame except that all the data is fused together in a single column requiring step-by-step extrication with regular expressions (see below).

**Snapshots of the Contacts Data Set transformation:**

![crowdfunding_etlTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/9e7f340f-4878-4c9b-b76b-ed4a4a697d4d)

![crowdfunding_etlTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/2267f027-2877-4be3-b10a-0deba4f933de)

![crowdfunding_etlTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/b1e7dc68-e554-4711-8e92-d1ad63613021)

![crowdfunding_etlTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/be3cb243-c2a9-4673-9fee-7b29cd87baa2)

![crowdfunding_etlTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/b769c324-26f8-4738-8f16-1fd404c94656)

![crowdfunding_etlTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/a9cef3f5-a611-443d-81d8-02f24819283b)

After completing the transformation phase, the script exports the Category, Subcategory, Contacts, and Campaign DataFrames to four CSV files: category.csv, subcategory.csv, contacts.csv, campaign.csv.

## <ins>**Load**</ins>

After studying the four CSV files, we design our database table schemata in an Entity-Relationship Diagram (ERD) using Quick DBD to define data types, primary keys, and foreign keys.

**A snapshot of the Postgres Database's ERD:**

<img width="886" alt="postgres_entity_relationship_diagram" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/1e0d6674-ef4c-47e6-9227-cd0fb9410d23">

From the ERD and taking into account the order of tables from foreign keys, we write an SQL script, crowdfunding_db_schema.sql, and run it with pgAdmin4's Query Tool before using pgAdmin4 again to import the CSV files into the Postgres Database, crowdfunding_db.

<img width="2036" alt="postgres_db_table_campaign" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/a01c97c1-1c99-4252-b2b3-80c7b85f6e61">

<img width="688" alt="postgres_db_table_category" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/42b64f50-b555-4117-b912-bff4caf50c58">

<img width="772" alt="postgres_db_table_contacts" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/9a5efb2f-db25-45d4-b730-e9734ada1b00">

<img width="494" alt="postgres_db_table_subcategory" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/135326e3-3e4d-4f27-b2a7-ef8c9832a9d5">

## <ins>**Conclusion**</ins>

In closing, this exercise has solid real-world applications as data is often dispersed with inconvenient and incompatible formats. To familiarize us with the appropriate practices, this project extracts, transforms, and loads a crowdfunding data set into a Postgres Database. To accomplish this feat, the transformation process uses Pandas DataFrames to split data, format data, convert data types, drop unwanted columns, and rename and reorder remaining columns. What’s more, the ERD visualizes the table schemata design, and the SQL script is the set of instructions for implementing it.  The administration platform, pgAdmin4, then creates the tables using the SQL script and loads the data into the database. Ultimately, the importance of learning these techniques cannot be understated as the ETL process is critical for producing clean, compatible, and accurate data for analysis purposes.

----

## Copyright

Nicholas J. George © 2023. All Rights Reserved.
