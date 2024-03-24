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

error_handle_functions.py

log_constants.py

log_functions.py

log_subroutines.py

pandas_process_functions.py

PySubroutines.py

If the folders, logs and images, are not present, the IPython notebook will create them.  The folder, resources, holds input and output files from the IPython Notebook; the folder, logs, contains debug and log files from testing the IPython Notebook; the folder, images has the PNG image files of the IPython Notebook's tables and plots; and the folder, sql, includes SQL scripts, Entity-Relationship Diagrams, and images of query results.

To place the IPython notebook in log mode or image mode set the parameter for the appropriate subroutine in coding cell #2 to True. In debug mode, the program displays the debug information and writes it to a debug file in the folder, logs; the same is true in log mode for log information sent to a log file. If the program is in log mode but not debug mode, it displays no debug information, but writes that information to the log file. If the program is in image mode, it writes all DataFrames, hvplot maps, and matplotlib plots to png files in the folder, images.

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

|&rarr; [./ETLMiniProjectConstants.py](./ETLMiniProjectConstants.py)

|&rarr; [./ETLMiniProject_NGeorge_SSmith.ipynb](./ETLMiniProject_NGeorge_SSmith.ipynb)

|&rarr; [./PyConstants.py](./PyConstants.py)  

|&rarr; [./PyFunctions.py](./PyFunctions.py)

|&rarr; [./PyLogConstants.py](./PyLogConstants.py)

|&rarr; [./PyLogFunctions.py](./PyLogFunctions.py)

|&rarr; [./PyLogSubRoutines.py](./PyLogSubRoutines.py)

|&rarr; [./PySubRoutines.py](./PySubRoutines.py)

|&rarr; [./README.TECHNICAL.md](./README.TECHNICAL.md)

|&rarr; [./README.md](./README.md)

|&rarr; [./Images/](./Images/)

  &emsp; |&rarr; [./Images/ETLMiniProjectTable111InitialCrowdfundingDataFrame.png](./Images/ETLMiniProjectTable111InitialCrowdfundingDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable113CrowdfundingDataFrameDescription.png](./Images/ETLMiniProjectTable113CrowdfundingDataFrameDescription.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable114CrowdfundingDataFrameMemoryUsage.png](./Images/ETLMiniProjectTable114CrowdfundingDataFrameMemoryUsage.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable121UpdatedCrowdfundingDataFrame.png](./Images/ETLMiniProjectTable121UpdatedCrowdfundingDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable131CategoryDataFrame.png](./Images/ETLMiniProjectTable131CategoryDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable132SubcategoryDataFrame.png](./Images/ETLMiniProjectTable132SubcategoryDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable211InitialCampaignDataFrame.png](./Images/ETLMiniProjectTable211InitialCampaignDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable221CampaignDataFrameWithRenamedColumns.png](./Images/ETLMiniProjectTable221CampaignDataFrameWithRenamedColumns.png)

  &emsp; |&rarr; [./Images/ETLMiniProjectTable222CampaignDataFrameColumnDataTypes.png](./Images/ETLMiniProjectTable222CampaignDataFrameColumnDataTypes.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable223CampaignDataFrameWithDates.png](./Images/ETLMiniProjectTable223CampaignDataFrameWithDates.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable231MergedCampaignDataFrame.png](./Images/ETLMiniProjectTable231MergedCampaignDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable232CleanMergedCampaignDataFrameFinal.png](./Images/ETLMiniProjectTable232CleanMergedCampaignDataFrameFinal.png)

  &emsp; |&rarr; [./Images/ETLMiniProjectTable234CleanMergedCampaignDataFrameDescription.png](./Images/ETLMiniProjectTable234CleanMergedCampaignDataFrameDescription.png)
  
  &emsp; |&rarr; 
[./Images/ETLMiniProjectTable235CleanMergedCampaignDataFrameMemoryUsage.png](./Images/ETLMiniProjectTable235CleanMergedCampaignDataFrameMemoryUsage.png)

  &emsp; |&rarr; [./Images/ETLMiniProjectTable311InitialContactsDataFrame.png](./Images/ETLMiniProjectTable311InitialContactsDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable321UpdatedContactsDataFramewithContactID.png](./Images/ETLMiniProjectTable321UpdatedContactsDataFramewithContactID.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable324UpdatedContactsDataFrameWithName.png](./Images/ETLMiniProjectTable324UpdatedContactsDataFrameWithName.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail.png](./Images/ETLMiniProjectTable325UpdatedContactsDataFrameWithEmail.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable331TransformedContactsDataFrame.png](./Images/ETLMiniProjectTable331TransformedContactsDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames.png](./Images/ETLMiniProjectTable332TransformedContactsDataFrameWithFirstandLastNames.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable341CleanContactsDataFrame.png](./Images/ETLMiniProjectTable341CleanContactsDataFrame.png)
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable343CleanContactsDataFrameMemoryUsage.png](./Images/ETLMiniProjectTable343CleanContactsDataFrameMemoryUsage.png)
  
  &emsp; |&rarr; [./Images/README.md](./Images/README.md)

|&rarr; [./Logs/](./Logs/)

  &emsp; |&rarr; [./Logs/20230922ETLMiniProjectDebug.txt](./Logs/20230922ETLMiniProjectDebug.txt)

  &emsp; |&rarr; [./Logs/20230922ETLMiniProjectLog.txt](./Logs/20230922ETLMiniProjectLog.txt)

  &emsp; |&rarr; [./Logs/README.md](./Logs/README.md)

|&rarr; [./Resources/](./Resources/)

  &emsp; |&rarr; [./Resources/README.md](./Resources/README.md)

  &emsp; |&rarr; [./Resources/campaign.csv](./Resources/campaign.csv)

  &emsp; |&rarr; [./Resources/category.csv](./Resources/category.csv)

  &emsp; |&rarr; [./Resources/contacts.csv](./Resources/contacts.csv)

  &emsp; |&rarr; [./Resources/contacts.xlsx](./Resources/contacts.xlsx)

  &emsp; |&rarr; [./Resources/crowdfunding.xlsx](./Resources/crowdfunding.xlsx)

  &emsp; |&rarr; [./Resources/subcategory.csv](./Resources/subcategory.csv)

|&rarr; [./SQL/](./SQL/)

  &emsp; |&rarr; [./SQL/PostgresDBTable_campaign.png](./SQL/PostgresDBTable_campaign.png)

  &emsp; |&rarr; [./SQL/PostgresDBTable_category.png](./SQL/PostgresDBTable_category.png)
  
  &emsp; |&rarr; [./SQL/PostgresDBTable_contacts.png](./SQL/PostgresDBTable_contacts.png)

  &emsp; |&rarr; [./SQL/PostgresDBTable_subcategory.png](./SQL/PostgresDBTable_subcategory.png)

  &emsp; |&rarr; [./SQL/Project2Group8EntityRelationshipDiagram.png](./SQL/Project2Group8EntityRelationshipDiagram.png)

  &emsp; |&rarr; [./SQL/README.md](./SQL/README.md)

  &emsp; |&rarr; [./SQL/crowdfunding_db_schema.sql](./SQL/crowdfunding_db_schema.sql)

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

N. James George, Stephen Smith © 2023. All Rights Reserved.
