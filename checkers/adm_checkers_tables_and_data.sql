CREATE SCHEMA adm
GO

DROP TABLE IF EXISTS adm.A_CHK_NamingConventionElements;

CREATE TABLE adm.A_CHK_NamingConventionElements (
ObjType SYSNAME NOT NULL,
EltType NVARCHAR(100) NOT NULL,
EltValue NVARCHAR(100) NOT NULL,
Comment NVARCHAR(MAX),
LUD DATETIME2 DEFAULT CURRENT_TIMESTAMP
 PRIMARY KEY (ObjType,EltType,EltValue)
 );

-- Tables and Views Prefix
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','A','Prefix for Anomalies or Rejects tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','D','Prefix for Dimension / referential tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','F','Prefix for Fact tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','L','Prefix for Links tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','M','Prefix for Metadata tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','N','Prefix for Logging, Notifications, Traces tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','P','Prefix for Parameters tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','S','Prefix for Subscriptions or users data tables or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','T','Prefix for Transformation tables (YTD,12RM…) or views');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('TableAndView','Prefix','Z','Prefix for Temp or work tables');

-- Procedures and functions Prefix
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Prefix','USP','Prefix for Procedures');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Prefix','UDF','Prefix for Functions');

-- Domains
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','ACT','Activity');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','CUS','Customer or Client');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','FIN','Financial');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','GEO','Geographical');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','HUM','Human Ressources');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','INV','Inventory and Stock');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','IOT','IOT');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','MAN','Manufacturing');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','MAT','Material & Product');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','MKT','Marketing');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','ORG','Organization');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','PRO','Production');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','PUR','Purchasing');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','SAL','Sales');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','SUP','Supplier');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','TIF','Time / Fiscal');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','TIM','Time / Calendar');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','TRA','Transport');

INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','CHK','Technical Check');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('All','Domain','TEC','Technical (for loading and admin)');



-- Procedure Type
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Type','Load','Load Procedure');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Type','PreLoad','PreLoad Procedure');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Type','PostLoad','PostLoad Procedure');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Type','Get','Get Procedure');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Procedure','Type','Purge','Purge Procedure');

-- Function Type
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Type','Get','Get Function');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Type','Convert','Convert or replace Function');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Type','Generate','Generate Function');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Type','Test','Test Function');
INSERT INTO adm.A_CHK_NamingConventionElements (ObjType,EltType,EltValue,Comment) VALUES ('Function','Type','Other','Miscallenous Function');
