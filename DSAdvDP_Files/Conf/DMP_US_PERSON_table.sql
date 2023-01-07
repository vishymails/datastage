-- All files and material for this course (Course Number KM422, -- "IBM InfoSphere Advanced DataStage - Advanced Data Processing -- v9.1" 2013) are 
-- IBM copyright property covered by the following copyright -- -- notice.
-- 
--  (c) Copyright IBM Corp. 2005, 2013
-- 
-- US Government Users Restricted Rights - Use duplication or
-- disclosure restricted by GSA ADP Schedule Contract with
-- IBM Corp


-- This CLP file was created using DB2LOOK Version "9.7" 
-- Timestamp: Fri 09 Aug 2013 02:23:58 PM PDT
-- Database Name: SAMPLE         
-- Database Manager Version: DB2/LINUX Version 9.7.4       
-- Database Codepage: 1208
-- Database Collating Sequence is: IDENTITY


CONNECT TO SAMPLE;

------------------------------------
-- DDL Statements for TABLESPACES --
------------------------------------


CREATE LARGE TABLESPACE "IBMDB2SAMPLEREL" IN DATABASE PARTITION GROUP IBMDEFAULTGROUP 
	 PAGESIZE 8192 MANAGED BY AUTOMATIC STORAGE 
	 AUTORESIZE YES 
	 INITIALSIZE 32 M 
	 MAXSIZE NONE 
	 EXTENTSIZE 32
	 PREFETCHSIZE AUTOMATIC
	 BUFFERPOOL IBMDEFAULTBP
	 OVERHEAD 7.500000
	 TRANSFERRATE 0.060000 
	 NO FILE SYSTEM CACHING  
	 DROPPED TABLE RECOVERY ON;



------------------------------------------------
-- DDL Statements for table "DB2INST1"."DMP_US_PERSON"
------------------------------------------------
 

CREATE TABLE "DB2INST1"."DMP_US_PERSON"  (
		  "SEQ" INTEGER NOT NULL , 
		  "ID" VARGRAPHIC(12) , 
		  "FIRSTNAME" VARGRAPHIC(60) NOT NULL , 
		  "LASTNAME" VARGRAPHIC(60) NOT NULL , 
		  "COMPANY" VARGRAPHIC(80) , 
		  "SSN" VARGRAPHIC(22) , 
		  "SEX" GRAPHIC(2) NOT NULL , 
		  "PHONE" VARGRAPHIC(24) NOT NULL , 
		  "BIRTHDATE" DATE NOT NULL , 
		  "EMAIL_ADDRESS" VARGRAPHIC(100) )   
		 IN "IBMDB2SAMPLEREL" ; 


-- DDL Statements for primary key on Table "DB2INST1"."DMP_US_PERSON"

ALTER TABLE "DB2INST1"."DMP_US_PERSON" 
	ADD PRIMARY KEY
		("SEQ");


COMMIT WORK;

CONNECT RESET;

TERMINATE;

