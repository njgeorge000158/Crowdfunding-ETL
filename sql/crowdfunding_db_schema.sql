--******************************************************************************************
--
--  File Name:  crowdfunding_db_schema.sql
--
--  File Description:
--      This file contains the SQL script to create and populate database tables 
--      for the ETL Crowdfunding Project.
--
--
--  Date               Description                              Programmer
--  ---------------    ------------------------------------     ------------------
--  09/22/2023         Initial Development                      Nicholas J. George
--
--******************************************************************************************/

-- These statements drop any existing tables in the database.
DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS contacts;

DROP TABLE IF EXISTS subcategory;

DROP TABLE IF EXISTS category;


-- These statements create the database tables for the ETL pipeline.
CREATE TABLE 
	category
	    (category_id VARCHAR(10),
	     category VARCHAR(50) NOT NULL,
            PRIMARY KEY (category_id));

CREATE TABLE 
	subcategory
	    (subcategory_id VARCHAR(15),
	     subcategory VARCHAR(50) NOT NULL,
            PRIMARY KEY (subcategory_id));

CREATE TABLE 
    contacts 
        (contact_id SERIAL,
	     first_name VARCHAR(40) NOT NULL,
         last_name VARCHAR(40) NOT NULL,
         email VARCHAR(100) NOT NULL,
	        PRIMARY KEY (contact_id));

CREATE TABLE 
    campaign
	    (cf_id SERIAL,
	     contact_id SERIAL NOT NULL,
         company_name VARCHAR(100) NOT NULL,
         description TEXT NOT NULL,
         goal NUMERIC(12,2) NOT NULL,
         pledged NUMERIC(12,2) NOT NULL,
         outcome VARCHAR(12) NOT NULL,
         backers_count SERIAL NOT NULL,
         country VARCHAR(4) NOT NULL,
         currency VARCHAR(6) NOT NULL,
         launch_date DATE NOT NULL,
         end_date DATE NOT NULL,
         category_id VARCHAR(10) NOT NULL,
         subcategory_id VARCHAR(15) NOT NULL,
	        PRIMARY KEY (cf_id),
            FOREIGN KEY (contact_id)
                REFERENCES contacts (contact_id),
	        FOREIGN KEY (category_id) 
                REFERENCES category (category_id),
            FOREIGN KEY (subcategory_id) 
                REFERENCES subcategory (subcategory_id));