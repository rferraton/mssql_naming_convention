CREATE FUNCTION adm.UDF_CHK_NamingTableAndView ()
RETURNS TABLE
AS
RETURN
WITH 
     CorrectNamedTablesNViews
AS (SELECT 
       so.name
FROM sys.sysobjects so
        CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements DomainsList
        CROSS JOIN DBATOOLS.adm.A_CHK_NamingConventionElements PrefixList
    WHERE 
	DomainsList.ObjType='All' AND DomainsList.EltType='Domain' AND
	PrefixList.ObjType='TableAndView' AND PrefixList.EltType='Prefix' AND
	so.xtype IN ( 'U', 'V' ) AND
	so.name COLLATE Latin1_General_CS_AS LIKE PrefixList.EltValue + '\_' + DomainsList.EltValue + '\_%' ESCAPE '\'
	)
SELECT CASE so.xtype
           WHEN 'U' THEN
               'TABLE'
           WHEN 'V' THEN
               'VIEW'
       END ObjType, so.xtype,
       so.name ObjName
FROM sys.sysobjects so
WHERE so.xtype IN ( 'U', 'V' )
AND NOT EXISTS
(
    SELECT 1 FROM CorrectNamedTablesNViews cntv WHERE cntv.name = so.name
);