WITH PrefixList
AS (SELECT prefix
    FROM
    (
        VALUES
            ('F'),
            ('A'),
            ('N'),
            ('L'),
            ('T'),
            ('S|'),
            ('P'),
            ('M')
    ) AS plist (prefix) ),
     DomainsList
AS (SELECT trigram
    FROM
    (
        VALUES
            ('ACT'),
            ('CUS'),
            ('FIN'),
            ('GEO'),
            ('HUM'),
            ('INV'),
            ('IOT'),
            ('MAN'),
            ('MAT'),
            ('MKT'),
            ('ORG'),
            ('PRO'),
            ('PUR'),
            ('SAL'),
            ('SUP'),
            ('TIF'),
            ('TIM'),
            ('TRA')
    ) AS dlist (trigram) ),
     CorrectNamedTablesNViews
AS (SELECT 
       so.name
FROM sys.sysobjects so
        CROSS JOIN DomainsList
        CROSS JOIN PrefixList
    WHERE 
	so.xtype IN ( 'U', 'V' ) AND
	so.name LIKE PrefixList.prefix + '\_' + DomainsList.trigram + '\_%' ESCAPE '\'
	)
SELECT CASE so.xtype
           WHEN 'U' THEN
               'TABLE'
           WHEN 'V' THEN
               'VIEW'
       END ObjType,
       so.name ObjName
FROM sys.sysobjects so
WHERE so.xtype IN ( 'U', 'V' )
AND NOT EXISTS
(
    SELECT 1 FROM CorrectNamedTablesNViews cntv WHERE cntv.name = so.name
);