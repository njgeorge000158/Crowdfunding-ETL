# Crowdfunding ETL Project
## Group 8: N. James George, Stephen Smith

----

## Usage:

----

The IPython notebook, ETLMiniProject_NGeorge_SSmith.ipynb, requires the following Python scripts with it in the same folder:

ETLMiniProjectConstants.py

PyConstants.py

PyFunctions.py

PyLogConstants.py

PyLogFunctions.py

PyLogSubRoutines.py

PySubroutines.py

If the folders, Resources, Logs, and Images are not present, the IPython notebook will create them.  The Resources folder holds input and output files from the IPython Notebook; the Logs folder contains debug and log files from testing the IPython Notebook; the Images folder has the PNG image files of the IPython Notebook's tables and plots; and the SQL folder includes SQL scripts, Entity-Relationship Diagrams, and images of quey results.

To place the IPython notebook in log mode, debug mode, or image mode set the parameter for the appropriate subroutine in coding cell #2 to True. In debug mode, the program displays the debug information and writes it to a debug file in the Logs folder; the same is true in log mode for log information sent to a log file in the same folder. If the program is in log mode but not debug mode, it displays no debug information, but writes that information to the log file. If the program is in image mode, it writes all the tables, hvplot, and matplotlib plots to png files in the Images folder.

----

## Installation:

----

If the computer has Anaconda, Jupyter Notebook, and a recent version of Python, the IPython notebook already has the following dependencies installed: datetime, io, json, matplotlib, numpy, pandas, pathlib, os, pandas, requests, requests_html, scipy.

In addition to those modules, the IPython notebook requires the following due to the additional modules: holoviews, hvplot, geoviews, geopy, aspose-words, dataframe-image.

Here are the requisite Terminal commands for installation of these peripheral modules:

python3 -m pip install holoviews

python3 -m pip install hvplot

python3 -m pip install geoviews

python3 -m pip install geopy

python3 -m pip install aspose-words

python3 -m pip install dataframe-image


The SQL script, crowdfunding_db_schema.sql, is in the SQL folder and requires the installation of PostgreSQL and pdAdmin4. 

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

## Resource Summary:

----

### Source code: 

ETLMiniProject_NGeorge_SSmith.ipynb, ETLMiniProjectConstants.py, PyConstants.py, PyFunctions.py, PyLogConstants.py, PyLogFunctions.py, PyLogSubRoutines.py, PySubRoutines.py

### Input files: 

crowdfunding.xlsx, contacts.xlsx

### Output file: 

category.csv, subcategory.csv, contacts.csv, campaign.csv 

### SQL script: 

crowdfunding_db_schema.sql

### Software:  

Jupyter Notebook, Python 3.11.4, Quick DBD - free DBD canvas, Postgres 15.4, pgAdmin4


<img src="https://img.shields.io/badge/Jupyter Notebook-inactive.svg?style=flat&logo=Jupyter&logoColor=orange" width="150px">&nbsp;
<img src="https://img.shields.io/badge/python-inactive.svg?style=flat&logo=Python&logoColor=yellow" width="80px">&nbsp;<img src="https://img.shields.io/badge/pandas-inactive.svg?style=flat&logo=Pandas&logoColor=blueviolet" width="80px">&nbsp;<img src="https://img.shields.io/badge/RegExr-inactive.svg?style=flat&logo=data:image/png;base64,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&logoColor=blue" width="80px">&nbsp;

<img src="https://img.shields.io/badge/postgres-inactive.svg?style=flat&logo=Postgresql&logoColor=blue" width="89px">

----

## GitHub Repository Branches

----

### main branch 

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
  
  &emsp; |&rarr; [./Images/ETLMiniProjectTable232CleanMergedCampaignDataFrameFinal.png.png](./Images/ETLMiniProjectTable232CleanMergedCampaignDataFrameFinal.png)

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

## References

----

[ETL (Extract, Transform, Load)](https://www.bmc.com/blogs/what-is-etl-extract-transform-load-etl-explained/) \

[Pandas User Guide](https://pandas.pydata.org/docs/user_guide/index.html) \

[PgAdmin Documentation](https://www.postgresql.org/docs/) \

[Postgres Documentation](https://www.pgadmin.org/docs/) \

[PostgresSQL Documentation](https://www.postgresql.org/docs/) \

[The Complete Guide to Regular Expressions](https://coderpad.io/blog/development/the-complete-guide-to-regular-expressions-regex/) \
