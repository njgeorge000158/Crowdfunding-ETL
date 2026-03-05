![etl](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/04c89862-b351-4a66-940b-d9e60c915836)

----

# **From Excel to Postgres: Building a Production-Ready ETL Pipeline for Crowdfunding Data**

---

**Project Overview**

Data rarely arrives in the form analysis requires. In practice, raw data is scattered across incompatible formats, fused into single columns, stored as the wrong data types, and structured for human readability rather than computational efficiency. The Extract, Transform, and Load (ETL) process exists to solve exactly this problem — converting raw, messy source data into clean, structured, and queryable information ready for analytical use.

This project constructs a complete ETL pipeline to process a crowdfunding dataset sourced from two Microsoft Excel workbooks. The pipeline is built in Python using Pandas and regular expressions within Jupyter Notebooks, produces four clean CSV files as its intermediate output, and culminates in a fully populated PostgreSQL relational database — complete with a formally designed Entity-Relationship Diagram (ERD), enforced primary and foreign key constraints, and verified data integrity across all four tables. The tools used span the full data engineering stack: Python, Pandas, regular expressions, QuickDBD, SQL, and pgAdmin4.

The answer to the project's rhetorical question — how difficult could it be? — turns out to be: considerably more nuanced than it appears. Each phase of the pipeline presented distinct technical challenges that required deliberate, methodical solutions.

---

## **Phase 1: Extract**

The pipeline begins by reading two source files — `crowdfunding.xlsx` and `contacts.xlsx` — into Pandas DataFrames using the `read_excel` method in the IPython Notebook `crowdfunding_etl.ipynb`. A key design decision made at this stage was to leverage `read_excel`'s `dtype` parameter to assign correct data types via a predefined Python dictionary at the point of ingestion, rather than performing type conversions later. This approach reduces the number of downstream transformation steps and minimizes the risk of silent type coercion errors propagating through the pipeline.

![crowdfunding_etlTable111InitialCrowdfundingDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/bd4e9926-3ac1-436f-a14a-a2ba1c94612a)

As shown in Table 1.1.1, the initial Crowdfunding DataFrame captures fourteen fields per campaign record, including `cf_id`, `contact_id`, `company_name`, `blurb`, `goal`, `pledged`, `outcome`, `backers_count`, `country`, `currency`, `launched_at`, `deadline`, `staff_pick`, `spotlight`, and a combined `category & sub-category` field. The sample rows immediately reveal several structural issues that the transformation phase must address: the UTC timestamps stored in `launched_at` and `deadline` are formatted as datetime strings requiring standardization, and the `category & sub-category` column fuses two distinct categorical dimensions — for example, "food/food trucks" and "music/rock" — into a single slash-delimited string that must be split before either dimension can serve as a relational foreign key.

![crowdfunding_etlTable311InitialContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/758ea194-ec39-4647-a92e-8c06e756dceb)

The Contacts DataFrame (Table 3.1.1) presents a more severe structural challenge. Rather than storing contact attributes in individual columns, the entire record for each contact — `contact_id`, `name`, and `email` — is encoded as a single JSON-formatted string within a single `contact_info` column. Every piece of analytically useful information is locked inside this string representation, inaccessible to SQL queries or Pandas operations without deliberate extraction. This is precisely the kind of real-world data quality problem that ETL pipelines are designed to resolve.

---

## **Phase 2: Transform**

The transformation phase is the most technically demanding portion of the pipeline and proceeds along two distinct tracks — one for the Crowdfunding data and one for the Contacts data.

### *Crowdfunding Transformation*

![crowdfunding_etlTable131CategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/e3296e80-494c-488f-9b0b-c0b6d8cb6b94)

![crowdfunding_etlTable132SubcategoryDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/e91d569e-0c55-4870-92d5-4c03b77fb66f)

From the raw Crowdfunding DataFrame, the script extracts the category and subcategory values by splitting the `category & sub-category` column on the forward-slash delimiter, isolating the unique values from each half, sorting them alphabetically, and assigning sequential identifiers. The resulting Category DataFrame (Table 1.3.1) contains 9 categories — film & video, food, games, journalism, music, photography, publishing, technology, and theater — each assigned a clean primary key from cat1 through cat9. The Subcategory DataFrame (Table 1.3.2) captures the finer-grained classification with identifiers subcat1 through subcat10 for the first ten entries, ultimately expanding to 24 subcategories in the final loaded database, covering a full range from animation and audio through world music. The alphabetical ordering and sequential indexing of both lookup tables ensures clean, consistent foreign key references when these tables are joined to the campaign table in the final database.

The Campaign DataFrame is then constructed by taking a copy of the original Crowdfunding DataFrame and applying a sequence of targeted transformations. The most technically significant of these is the UTC timestamp conversion: the `launched_at` and `deadline` fields contain integer values representing seconds elapsed since January 1, 1971, which must be converted to standard DATE format before they can be stored correctly in PostgreSQL and used meaningfully in date-range queries. The script also merges the Campaign DataFrame with the Category and Subcategory DataFrames, replacing the raw combined text strings with their corresponding foreign key identifiers, then drops redundant columns and renames and reorders the surviving fields to produce a clean, normalized campaign table ready for database ingestion.

### *Contacts Transformation*

The Contacts transformation is more procedurally complex because of the JSON-string encoding problem identified during extraction. The transformation proceeds in clearly documented incremental steps, each captured in a dedicated table snapshot.

![crowdfunding_etlTable321UpdatedContactsDataFramewithContactID](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/9e7f340f-4878-4c9b-b76b-ed4a4a697d4d)

![crowdfunding_etlTable324UpdatedContactsDataFrameWithName](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/2267f027-2877-4be3-b10a-0deba4f933de)

![crowdfunding_etlTable325UpdatedContactsDataFrameWithEmail](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/b1e7dc68-e554-4711-8e92-d1ad63613021)

Table 3.2.1 shows the first step: extracting the `contact_id` integer from within the JSON string using a regular expression pattern, appending it as a new column alongside the original `contact_info` string. Table 3.2.4 shows the second step: extracting the full name string from the JSON and appending it as a `name` column. Table 3.2.5 adds the email address as a fourth column, completing the parallel extraction of all three embedded fields from the source string.

![crowdfunding_etlTable331TransformedContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/be3cb243-c2a9-4673-9fee-7b29cd87baa2)

![crowdfunding_etlTable332TransformedContactsDataFrameWithFirstandLastNames](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/b769c324-26f8-4738-8f16-1fd404c94656)

With all three fields successfully extracted into typed columns, Table 3.3.1 shows the first clean intermediate result: a three-column DataFrame of `contact_id`, `name`, and `email` — the JSON source column discarded, the useful data now accessible as proper structured fields. Table 3.3.2 documents the subsequent name-splitting step, which uses a regular expression or string split operation to separate the full `name` field into discrete `first_name` and `last_name` columns — a transformation that enables proper alphabetical sorting, individual field searching, and normalized storage in the database.

![crowdfunding_etlTable341CleanContactsDataFrame](https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/a9cef3f5-a611-443d-81d8-02f24819283b)

The final output of the Contacts transformation, shown in Table 3.4.1, is a clean four-column DataFrame: `contact_id`, `first_name`, `last_name`, and `email` — all correctly typed, properly structured, and ready for loading. The journey from a single opaque JSON string column to this clean relational table is the most instructive transformation in the entire pipeline, demonstrating the power and necessity of regular expressions when dealing with semi-structured data embedded in flat files.

Upon completion of both transformation tracks, the script exports all four DataFrames to CSV files: `category.csv`, `subcategory.csv`, `contacts.csv`, and `campaign.csv`. These files serve as the portable, format-agnostic intermediate deliverables that bridge the Python transformation environment and the PostgreSQL loading environment.

---

## **Phase 3: Load**

<img width="886" alt="postgres_entity_relationship_diagram" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/1e0d6674-ef4c-47e6-9227-cd0fb9410d23">

Before any data could be loaded, the database schema required careful design. The four CSV files were analyzed to define appropriate data types, primary keys, foreign key relationships, field lengths, and table creation order — all formalized in an Entity-Relationship Diagram created in QuickDBD.

The ERD reveals a well-normalized four-table relational schema centered on the `campaign` table as the primary fact table. The `campaign` table holds thirteen fields including `cf_id` (SERIAL primary key), `contact_id` (SERIAL foreign key referencing `contacts`), `company_name` (VARCHAR 100), `description` (TEXT), `goal` and `pledged` (NUMERIC 12,2), `outcome` (VARCHAR 12), `backers_count` (SERIAL), `country` (VARCHAR 4), `currency` (VARCHAR 6), `launch_date` and `end_date` (DATE), `category_id` (VARCHAR 10, foreign key referencing `category`), and `subcategory_id` (VARCHAR 15, foreign key referencing `subcategory`).

Three dimension tables surround it: `contacts` (contact_id PK, first_name, last_name, email), `category` (category_id PK, category), and `subcategory` (subcategory_id PK, subcategory). The foreign key relationships — `campaign.contact_id → contacts.contact_id`, `campaign.category_id → category.category_id`, and `campaign.subcategory_id → subcategory.subcategory_id` — enforce referential integrity at the database level, ensuring that no campaign record can reference a contact, category, or subcategory that does not exist in its respective dimension table.

This foreign key dependency structure also dictated the table creation and data loading order: the three dimension tables (`contacts`, `category`, `subcategory`) had to be created and populated before the `campaign` table could be loaded, since PostgreSQL enforces foreign key constraints at insert time and will reject any campaign record whose `contact_id`, `category_id`, or `subcategory_id` values do not already exist in the referenced tables. Getting this order wrong would produce constraint violation errors — a subtle but important operational consideration for any ETL pipeline targeting a relational database with enforced referential integrity.

The SQL schema script `crowdfunding_db_schema.sql` was executed via pgAdmin4's Query Tool to create all four tables, after which the CSV files were imported in dependency order. The successful load was verified by running `SELECT *` queries against each table in pgAdmin4.

<img width="2036" alt="postgres_db_table_campaign" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/a01c97c1-1c99-4252-b2b3-80c7b85f6e61">

The above image confirms the `campaign` table load: 43 visible rows in the query output, with all fields correctly typed — `goal` and `pledged` as NUMERIC(12,2), `launch_date` and `end_date` as DATE (properly converted from the original UTC integers), `category_id` and `subcategory_id` as character varying references — and data spanning campaigns from the US, AU, GB, CA, IT, DK, and other countries with currencies including USD, AUD, GBP, CAD, EUR, and DKK.

<img width="688" alt="postgres_db_table_category" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/42b64f50-b555-4117-b912-bff4caf50c58">

The above image confirms the `category` table load: all 9 category records correctly loaded with category_id primary keys cat1 through cat9 and category names matching exactly the values extracted during transformation.

<img width="772" alt="postgres_db_table_contacts" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/9a5efb2f-db25-45d4-b730-e9734ada1b00">

The above image confirms the `contacts` table load: the first 41 of the full contact roster are visible, with `contact_id` as integer primary key and `first_name`, `last_name`, and `email` all stored as VARCHAR fields with appropriate length constraints. The international diversity of email domains — .fr, .org, .com, .de, .net, .co.uk, .it, and others — confirms that the email extraction regex handled varied formats correctly without truncation or corruption.

<img width="494" alt="postgres_db_table_subcategory" src="https://github.com/njgeorge000158/Crowdfunding-ETL/assets/137228821/135326e3-3e4d-4f27-b2a7-ef8c9832a9d5">

The above image confirms the `subcategory` table load: all 24 subcategories loaded correctly from subcat1 (animation) through subcat24 (world music), with subcategory_id as VARCHAR(15) primary key and subcategory as VARCHAR(50). The 24 loaded subcategories exceed the 10 visible in the initial transformation snapshots, confirming that the full dataset was processed end-to-end without record loss.

---

## **Conclusion and Lessons Learned**

This project demonstrates that even a relatively modest ETL task — two source files, four destination tables, a few hundred records — involves a meaningful chain of decisions, transformations, and validations that must each be executed correctly for the pipeline to function as intended. The most technically demanding elements were the JSON string parsing in the Contacts transformation, the UTC timestamp conversion in the Campaign transformation, and the foreign key dependency ordering in the database load sequence.

Several broader lessons emerge from the work. First, data type assignment at extraction time — rather than deferred correction during transformation — reduces pipeline complexity and the risk of downstream errors. Second, incremental transformation with intermediate verification at each step, as demonstrated in the Contacts pipeline, is more reliable and debuggable than attempting complex multi-step transformations in a single operation. Third, the ERD is not merely a documentation artifact — it is an active design tool that surfaces dependency constraints and field type decisions that directly affect pipeline correctness. Fourth, referential integrity enforcement in PostgreSQL, while occasionally inconvenient during development, provides a valuable correctness guarantee in production that flat-file storage cannot offer.

Ultimately, the ETL process is not merely a technical chore — it is the foundational practice that separates raw data from analytical data, and the skills demonstrated here are directly transferable to data pipelines of any scale.

----

## Copyright

Nicholas J. George © 2023. All Rights Reserved.
