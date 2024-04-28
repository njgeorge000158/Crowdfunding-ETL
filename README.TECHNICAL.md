# **Crowdfunding ETL Project**

----

### **Installation:**

----

If the computer has Anaconda, Jupyter Notebook, and a recent version of Python, the IPython notebook already has the following dependencies installed: datetime, io, json, matplotlib, numpy, pandas, pathlib, os, pandas, requests, requests_html, scipy.

In addition to those modules, the IPython notebook requires the following additional modules: holoviews, hvplot, geoviews, geopy, aspose-words, dataframe-image.

Here are the requisite Terminal commands for installation of these peripheral modules:

python3 -m pip install holoviews

python3 -m pip install hvplot

python3 -m pip install geoviews

python3 -m pip install geopy

python3 -m pip install aspose-words

python3 -m pip install dataframe-image


The SQL script, crowdfunding_db_schema.sql, is in the folder, sql, and requires the installation of PostgreSQL and pdAdmin4. 

If you have not installed them, here are the instructions:

* In your browser, Mac users should go to [Mac Download PostgreSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads), and Windows users should go to [Windows Download PostgreSQL](https://www.pgadmin.org/download/pgadmin-4-macos/).

* Select the download option for your operating system and for the latest version 14.x of PostgreSQL.

* After downloading PostgreSQL 14.x, double click on the .dmg file.

* Go through the Setup Wizard and install PostgreSQL.  For MacOS users, keep the default location /Library/PostgreSQL/14; for MS Windows, keep the default location C:\Program Files\PostgreSQL\14.

* Select the components to be installed. Be sure to un-check Stack Builder.

* Add your data directory. For Mac users, keep the default location /Library/PostgreSQL/14/data; for MS Windows, keep the default location C:\Program Files\PostgreSQL\14\data.

* Enter postgres as the password. Be sure to record this password for future use.

* Keep the default port as 5432. In the Advanced Options, set the locale as [Default locale].

* The final screen will be the Pre Installation Summary.

* To confirm the installation, start pgAdmin (it will open in a new browser window). Connect to the default server by clicking on it and entering the password if prompted.
  
----

### **Usage:**

----

The IPython notebook, crowdfunding_etl.ipynb, requires the following Python scripts with it in the same folder:

crowdfunding_etl.py

logx_constants.py

logx.py

pandasx_constants.py

pandasx.py

timex.py

If the folders, logs and images, are not present, the IPython notebook will create them.  The folder, resources, holds input and output files from the IPython Notebook; the folder, logs, contains debug and log files from testing the IPython Notebook; the folder, images has the PNG image files of the IPython Notebook's tables and plots; and the folder, sql, includes SQL scripts, Entity-Relationship Diagrams, and images of query results.

To place the IPython notebook in log mode or image mode set the parameter for the appropriate subroutine in coding cell #2 to True. In log mode, it writes information to the log file in the folder, logs. If the program is in image mode, it writes all dataframes, hvplot maps, and matplotlib plots to png files in the folder, images.

----

### **Resource Summary:**

----

#### Source code

crowdfunding_etl.ipynb, error_handle_functions.py, log_constants.py, log_functions.py, log_subroutines.py, pandas_process_functions.py

#### Input files

crowdfunding.xlsx, contacts.xlsx

#### Output files

category.csv, subcategory.csv, contacts.csv, campaign.csv 

#### SQL script

crowdfunding_db_schema.sql

#### Software

Jupyter Notebook, Python 3.11.4, Postgres 15.4

![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

----

### **GitHub Repository Branches:**

----

#### main branch 

|&rarr; [./crowdfunding_etl.py](./crowdfunding_etl.py)

|&rarr; [./error_handle_functions.py](./error_handle_functions.py)

|&rarr; [./log_constants.py](./log_constants.py)  

|&rarr; [./log_functions.py](./log_functions.py)

|&rarr; [./log_subroutines.py](./log_subroutines.py)

|&rarr; [./pandas_process_functions.py](./pandas_process_functions.py)

|&rarr; [./README.TECHNICAL.md](./README.TECHNICAL.md)

|&rarr; [./README.md](./README.md)

|&rarr; [./images/](./images/)

  &emsp; |&rarr; [./images/crowdfunding_etlTable111InitialCrowdfundingDataFrame.png](./images/crowdfunding_etlTable111InitialCrowdfundingDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable113CrowdfundingDataFrameDescription.png](./images/crowdfunding_etlTable113CrowdfundingDataFrameDescription.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable114CrowdfundingDataFrameMemoryUsage.png](./images/crowdfunding_etlTable114CrowdfundingDataFrameMemoryUsage.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable121UpdatedCrowdfundingDataFrame.png](./images/crowdfunding_etlTable121UpdatedCrowdfundingDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable131CategoryDataFrame.png](./images/crowdfunding_etlTable131CategoryDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable132SubcategoryDataFrame.png](./images/crowdfunding_etlTable132SubcategoryDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable211InitialCampaignDataFrame.png](./images/crowdfunding_etlTable211InitialCampaignDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable221CampaignDataFrameWithRenamedColumns.png](./images/crowdfunding_etlTable221CampaignDataFrameWithRenamedColumns.png)

  &emsp; |&rarr; [./images/crowdfunding_etlTable222CampaignDataFrameColumnDataTypes.png](./images/crowdfunding_etlTable222CampaignDataFrameColumnDataTypes.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable223CampaignDataFrameWithDates.png](./images/crowdfunding_etlTable223CampaignDataFrameWithDates.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable231MergedCampaignDataFrame.png](./images/crowdfunding_etlTable231MergedCampaignDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable232CleanMergedCampaignDataFrameFinal.png](./images/crowdfunding_etlTable232CleanMergedCampaignDataFrameFinal.png)

  &emsp; |&rarr; [./images/crowdfunding_etlTable234CleanMergedCampaignDataFrameDescription.png](./images/crowdfunding_etlTable234CleanMergedCampaignDataFrameDescription.png)
  
  &emsp; |&rarr; 
[./images/crowdfunding_etlTable235CleanMergedCampaignDataFrameMemoryUsage.png](./images/crowdfunding_etlTable235CleanMergedCampaignDataFrameMemoryUsage.png)

  &emsp; |&rarr; [./images/crowdfunding_etlTable311InitialContactsDataFrame.png](./images/crowdfunding_etlTable311InitialContactsDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable321UpdatedContactsDataFramewithContactID.png](./images/crowdfunding_etlTable321UpdatedContactsDataFramewithContactID.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable324UpdatedContactsDataFrameWithName.png](./images/crowdfunding_etlTable324UpdatedContactsDataFrameWithName.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable325UpdatedContactsDataFrameWithEmail.png](./images/crowdfunding_etlTable325UpdatedContactsDataFrameWithEmail.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable331TransformedContactsDataFrame.png](./images/crowdfunding_etlTable331TransformedContactsDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable332TransformedContactsDataFrameWithFirstandLastNames.png](./images/crowdfunding_etlTable332TransformedContactsDataFrameWithFirstandLastNames.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable341CleanContactsDataFrame.png](./images/crowdfunding_etlTable341CleanContactsDataFrame.png)
  
  &emsp; |&rarr; [./images/crowdfunding_etlTable343CleanContactsDataFrameMemoryUsage.png](./images/crowdfunding_etlTable343CleanContactsDataFrameMemoryUsage.png)
  
  &emsp; |&rarr; [./images/README.md](./images/README.md)

|&rarr; [./logs/](./logs/)

  &emsp; |&rarr; [./logs/20240324crowdfunding_etl_log.txt](./logs/20240324crowdfunding_etl_log.txt)

  &emsp; |&rarr; [./logs/README.md](./logs/README.md)

|&rarr; [./resources/](./resources/)

  &emsp; |&rarr; [./resources/README.md](./resources/README.md)

  &emsp; |&rarr; [./resources/campaign.csv](./resources/campaign.csv)

  &emsp; |&rarr; [./resources/category.csv](./resources/category.csv)

  &emsp; |&rarr; [./resources/contacts.csv](./resources/contacts.csv)

  &emsp; |&rarr; [./resources/contacts.xlsx](./resources/contacts.xlsx)

  &emsp; |&rarr; [./resources/crowdfunding.xlsx](./resources/crowdfunding.xlsx)

  &emsp; |&rarr; [./resources/subcategory.csv](./resources/subcategory.csv)

|&rarr; [./sql/](./sql/)

  &emsp; |&rarr; [./sql/crowdfunding_db_schema.png](./sql/crowdfunding_db_schema.png)

  &emsp; |&rarr; [./sql/postgres_db_table_campaign.png](./sql/postgres_db_table_campaign.png)
  
  &emsp; |&rarr; [./sql/postgres_db_table_category.png](./sql/postgres_db_table_category.png)

  &emsp; |&rarr; [./sql/postgres_db_table_contacts.png](./sql/postgres_db_table_contacts.png)

  &emsp; |&rarr; [./sql/postgres_db_table_subcategory.png](./sql/postgres_db_table_subcategory.png)

  &emsp; |&rarr; [./sql/postgres_entity_relationship_diagram.png](./sql/postgres_entity_relationship_diagram.png)

  &emsp; |&rarr; [./sql/README.md](./sql/README.md)

----

### **References:**

----

[ETL (Extract, Transform, Load)](https://www.bmc.com/blogs/what-is-etl-extract-transform-load-etl-explained/) \

[Pandas User Guide](https://pandas.pydata.org/docs/user_guide/index.html) \

[PgAdmin Documentation](https://www.postgresql.org/docs/) \

[Postgres Documentation](https://www.pgadmin.org/docs/) \

[PostgresSQL Documentation](https://www.postgresql.org/docs/) \

[The Complete Guide to Regular Expressions](https://coderpad.io/blog/development/the-complete-guide-to-regular-expressions-regex/) \

----

### **Authors and Acknowledgment:**

----

### Copyright

Nicholas J. George, Stephen Smith © 2023. All Rights Reserved.
