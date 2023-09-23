## Overview:

----

The IPython notebook, ETLMiniProject_NGeorge_SSmith.ipynb, requires the following Python scripts with it in the same folder:

ETLMiniProjectConstants.py

PyConstants.py

PyFunctions.py

PyLogConstants.py

PyLogFunctions.py

PyLogSubRoutines.py

PySubroutines.py

If the computer has Anaconda, Jupyter Notebook, and a recent version of Python, the IPython notebook already has the following dependencies installed: datetime, io, json, matplotlib, numpy, pandas, pathlib, os, pandas, requests, requests_html, scipy.

In addition to those modules, the IPython notebook needs the following to execute: holoviews, hvplot, panel, geoviews, geopy, aspose-words, dataframe-image.

Here are the requisite Terminal commands for installation of these peripheral modules:

python3 -m pip install holoviews

python3 -m pip install hvplot

python3 -m pip install panel

python3 -m pip install geoviews

python3 -m pip install geopy

python3 -m pip install aspose-words

python3 -m pip install dataframe-image

The SQL script, crowdfunding_db_schema.sql, for database table creation is in the SQL folder and requires the installation of PostgreSQL and pdAdmin to run. 

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
  
If the folders, Resources, Logs, and Images are not present, the IPython notebook will create them.

To place the IPython notebook in log mode, debug mode, or image mode set the parameter for the appropriate subroutine in cell #2 to True. In debug mode, the program displays the debug information and writes it to a debug file in the Logs folder; the same is true in log mode for log information sent to a log file in the same folder. If the program is in log mode but not debug mode, it displays no debug information, but writes that information to the log file. If the program is in image mode, it writes all the plots to png files and all maps to html files in the Images folder.

----

## Resource Summary:

----

Source code: ETLMiniProject_NGeorge_SSmith.ipynb, ETLMiniProjectConstants.py, PyConstants.py, PyFunctions.py, PyLogConstants.py, PyLogFunctions.py, PyLogSubRoutines.py, PySubRoutines.py
Input files: crowdfunding.xlsx, contacts.xlsx
Output file: category.csv, subcategory.csv, contacts.csv, campaign.csv 
SQL script: crowdfunding_db_schema.sql
Software:  Jupyter Notebook, Python 3.11.4, Quick DBD - free DBD canvas, pgadmin4, Postgres 15.4

----

## GitHub Repository Branches

----

The deliverables for Project 2, Crowdfunding ETL, are in this GitHub repository as follows.  

main branch 
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

 &emsp; |&rarr; [./Data/crowdfunding_db_relationships.png](./Data/crowdfunding_db_relationships.png)  



|&rarr; [./README.md](./README.md)  

|&rarr; [./ETL_Practice.ipynb](./ETL_Practice.ipynb)  
|&rarr; [./Resources.zip](./Resources.zip)  
|&rarr; ./Queries/  
  &emsp; |&rarr; [./Queries/crowdfunding_db_schema.sql](./Queries/crowdfunding_db_schema.sql)  
  &emsp; |&rarr; [./Queries/crowdfunding_SQL_Analysis.sql](./Queries/crowdfunding_SQL_Analysis.sql)  
|&rarr; ./Data/  
  &emsp; |&rarr; [./Data/crowdfunding_db_relationships.png](./Data/crowdfunding_db_relationships.png)  
  &emsp; |&rarr; [./Data/category.csv](./Data/category.csv)  
  &emsp; |&rarr; [./Data/subcategory.csv](./Data/subcategory.csv)  
  &emsp; |&rarr; [./Data/contacts.csv](./Data/contacts.csv)  
  &emsp; |&rarr; [./Data/campaign.csv](./Data/campaign.csv)  
  &emsp; |&rarr; [./Data/backers.csv](./Data/backers.csv)  
  &emsp; |&rarr; [./Data/email_contacts_remaining_goal_amount.csv](./Data/email_contacts_remaining_goal_amount.csv)  
  &emsp; |&rarr; [./Data/email_backers_remaining_goal_amount.csv](./Data/email_backers_remaining_goal_amount.csv)  
  &emsp; |&rarr; [./Data/backers.png](./Data/backers.png)  
  &emsp; |&rarr; [./Data/campaign_backers_diff.png](./Data/campaign_backers_diff.png)  
  &emsp; |&rarr; [./Data/email_contacts_remaining_goal_amount.png](./Data/email_contacts_remaining_goal_amount.png)  
  &emsp; |&rarr; [./Data/email_backers_remaining_goal_amount.png](./Data/email_backers_remaining_goal_amount.png)  
