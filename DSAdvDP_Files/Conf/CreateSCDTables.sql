-- All files and material for this course (Course Number KM422, -- "IBM InfoSphere Advanced DataStage - Advanced Data Processing -- v9.1" 2013) are 
-- IBM copyright property covered by the following copyright -- -- notice.
-- 
--  (c) Copyright IBM Corp. 2005, 2013
-- 
-- US Government Users Restricted Rights - Use duplication or
-- disclosure restricted by GSA ADP Schedule Contract with
-- IBM Corp


create table super.ProdDim (ProdSK   BigInt not null, SKU      Char(10) not null, Brand    Char(20),Descr    Char(30),Curr     Char(1),EffDate  Date,ExpDate  Date);
create unique index ProdDim_idx on super.ProdDim (ProdSK);
insert into super.ProdDim values(1,'3333333333','Sunshine','Yellow Duckie','Y','2004-01-01','2099-12-31');
insert into super.ProdDim values(2,'4444444444','AAAAA','spoon','Y','2004-01-01','2099-12-31');
insert into super.ProdDim values(10,'5555555555','AAAAA','grass cutter','Y','2004-01-01','2099-12-31');
create table super.StoreDim (StoreSK  BigInt not null, Id       Char(5) not null, Name     Char(10),Mgr      Char(20));
create unique index StoreDim_idx on super.StoreDim (StoreSK);
insert into super.StoreDim values (1,'A1113','Stuffy''s','Jefferson');
insert into super.StoreDim values (2,'A1114','McStuff','Adams');
insert into super.StoreDim values (5,'A1115','Lil Stuff','Monroe');
create table super.Facttbl (ProdSK     BigInt not null, StoreSK    BigInt not null, SaleAmt    Decimal(7,2), SaleUnits  BigInt);
commit;
