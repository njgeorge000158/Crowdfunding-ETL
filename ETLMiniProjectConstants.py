#!/usr/bin/env python
# coding: utf-8

# In[1]:


#*******************************************************************************************
 #
 #  File Name:  ETLMiniProjectConstants.py
 #
 #  File Description:
 #      This Python script, ETLMiniProjectConstants.py, contains generic Python constants
 #      for completing common tasks in the ETL MiniProject.
 #
 #
 #  Date            Description                             Programmer
 #  ----------      ------------------------------------    ------------------
 #  09/21/2023      Initial Development                     N. James George
 #
 #******************************************************************************************/

from datetime import datetime as dt


# In[2]:


CONSTANT_LOCAL_FILE_NAME \
    = 'ETLMiniProjectConstants.py'


# In[ ]:


CONSTANT_CROWDFUNDING_FILE_PATH \
    = './Resources/crowdfunding.xlsx'

CONSTANT_CATEGORY_FILE_PATH \
    = './Resources/category.csv'

CONSTANT_SUBCATEGORY_FILE_PATH \
    = './Resources/subcategory.csv'

CONSTANT_CAMPAIGN_FILE_PATH \
    = './Resources/campaign.csv'

CONSTANT_CONTACTS_EXCEL_FILE_PATH \
    = './Resources/contacts.xlsx'

CONSTANT_CONTACTS_CSV_FILE_PATH \
    = './Resources/contacts.csv'

excelCrowdfundingDTypeDictionary \
    = {'cf_id': 
           int, 
       'contact_id': 
           int,
       'company_name': 
           str,
       'blurb': 
           str,
       'goal': 
           float,
       'pledged': 
           float,
       'outcome': 
           str,
       'backers_count': 
           int,
       'country': 
           str,
       'currency': 
           str,
       'staff_pick': 
           bool,
       'spotlight': 
           bool,
       'category & sub-category': 
           str,
       'Value': 
           float}

excelCrowdfundingConverterDictionary \
    = {'launched_at': 
           dt.fromtimestamp,
       'deadline': 
           dt.fromtimestamp}

excelContactsDTypeDictionary \
    = {'contact_id': 
            int,
       'name':
            str,
       'email':
            str}

