WITH DomainsList AS 
(
SELECT trigram FROM 
(VALUES
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
)AS dlist(trigram)
),
CorrectNamedObj AS
(
SELECT name FROM sys.tables CROSS JOIN DomainsList
WHERE 
name LIKE '[F|D|A|N|L|T|S|P|M]\_'+DomainsList.trigram+'\_%' ESCAPE '\' 
)
SELECT t.name FROM sys.tables t WHERE NOT EXISTS (SELECT 1 FROM CorrectNamedObj cno WHERE cno.name=t.name)
;