-- All files and material for this course (Course Number KM422, -- "IBM InfoSphere Advanced DataStage - Advanced Data Processing -- v9.1" 2013) are 
-- IBM copyright property covered by the following copyright -- -- notice.
-- 
--  (c) Copyright IBM Corp. 2005, 2013
-- 
-- US Government Users Restricted Rights - Use duplication or
-- disclosure restricted by GSA ADP Schedule Contract with
-- IBM Corp



-- This CLP file was created using DB2LOOK Version "9.7" 
-- Timestamp: Thu 08 Aug 2013 03:02:54 PM PDT
-- Database Name: SAMPLE         
-- Database Manager Version: DB2/LINUX Version 9.7.4       
-- Database Codepage: 1208
-- Database Collating Sequence is: IDENTITY


CONNECT TO SAMPLE;

------------------------------------------------
-- DDL Statements for table "DIA     "."CUSTOMERDATA"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."CUSTOMERDATA"  (
		  "CUSTOMERID" INTEGER NOT NULL , 
		  "NUMBER" VARCHAR(16) NOT NULL , 
		  "FNAME" VARCHAR(20) NOT NULL , 
		  "MNAME" VARCHAR(20) , 
		  "LNAME" VARCHAR(20) NOT NULL , 
		  "CREDITCARDNUMBER" VARCHAR(16) NOT NULL , 
		  "EMAIL" VARCHAR(200) NOT NULL , 
		  "MEMBERSINCE" DATE NOT NULL , 
		  "SSN" VARCHAR(9) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "DIA     "."CUSTOMERDATA"

ALTER TABLE "DIA     "."CUSTOMERDATA" 
	ADD PRIMARY KEY
		("CUSTOMERID");


COMMIT WORK;

CONNECT RESET;

TERMINATE;

