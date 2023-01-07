-- All files and material for this course (Course Number KM422, -- "IBM InfoSphere Advanced DataStage - Advanced Data Processing -- v9.1" 2013) are 
-- IBM copyright property covered by the following copyright -- -- notice.
-- 
--  (c) Copyright IBM Corp. 2005, 2013
-- 
-- US Government Users Restricted Rights - Use duplication or
-- disclosure restricted by GSA ADP Schedule Contract with
-- IBM Corp



-- This CLP file was created using DB2LOOK Version "9.7" 
-- Timestamp: Tue 09 Jul 2013 10:25:19 AM PDT
-- Database Name: SAMPLE         
-- Database Manager Version: DB2/LINUX Version 9.7.4       
-- Database Codepage: 1208
-- Database Collating Sequence is: IDENTITY


-- CONNECT TO SAMPLE;



------------------------------------------------
-- DDL Statements for table "DB2INST1"."CUSTOMER_DS"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CUSTOMER_DS"  (
       "SSN" VARCHAR(9) NOT NULL ,
       "CUSTOMERID" INTEGER NOT NULL ,
       "FIRSTNAME" VARCHAR(20)NOT NULL , 
       "MIDDLENAME" VARCHAR(20) , 
       "LASTNAME" VARCHAR(20) NOT NULL , 
       "DOB" DATE NOT NULL ) ; 


-- DDL Statements for primary key on Table "DB2INST1"."CUSTOMER_DS"

ALTER TABLE "DB2INST1"."CUSTOMER_DS" 
	ADD PRIMARY KEY
		("CUSTOMERID");



------------------------------------------------
-- DDL Statements for table "DB2INST1"."CUSTOMER_DS_CC"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CUSTOMER_DS_CC"  (
		  "CUSTOMERID" INTEGER NOT NULL , 
		  "NUMBER" VARCHAR(16) NOT NULL , 
		  "CREDITCARDNUMBER" VARCHAR(16) NOT NULL , 
		  "DIG" INTEGER NOT NULL , 
		  "DOE" DATE NOT NULL , 
		  "MEMBERSINCE" DATE NOT NULL ); 






------------------------------------------------
-- DDL Statements for table "DB2INST1"."CUSTOMER_DS_PHONE"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CUSTOMER_DS_PHONE"  (
		  "CUSTOMERID" INTEGER NOT NULL , 
		  "PHONENUMBER" VARCHAR(10) NOT NULL , 
		  "PHONETYPE" VARCHAR(16) NOT NULL ); 






------------------------------------------------
-- DDL Statements for table "DB2INST1"."CC_CHARGE"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CC_CHARGE"  (
		  "CREDITCARDNUMBER" VARCHAR(16) NOT NULL , 
		  "IMPORT" DECIMAL(12,2) NOT NULL , 
		  "DATE" DATE NOT NULL ); 






------------------------------------------------
-- DDL Statements for table "DB2INST1"."CC_PAYMENT"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CC_PAYMENT"  (
		  "CREDITCARDNUMBER" VARCHAR(16) NOT NULL , 
		  "IMPORT" DECIMAL(12,2) NOT NULL , 
		  "DATE" DATE NOT NULL ); 












COMMIT WORK;

CONNECT RESET;

TERMINATE;

