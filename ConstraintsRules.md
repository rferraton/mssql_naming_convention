## Constraints Rules

- **[Global Rules](GlobalRules.md)** and

### CS1 : Constraints naming pattern


Constraint Type	|	CSPrefix	|Pattern|		exemple	|
:---	|	:---:	|	:---	|:---	|
Primary key	|	PK_	|	\<CSPrefix\>\_\<TableFullName\>	|PK_D_PRO_Product	|
Foreign key	|	FK_	|	\<CSPrefix\>\_\<TableFullName\>\_\<ParentTableName\>	|FK_D_PRO_Product_ProductGroup	|
Unique key	|	UK_	|	\<CSPrefix\>\_\<TableFullName\>	|UK_D_PRO_Product	|
Check key	|	CK_	|	\<CSPrefix\>\_\<TableFullName\>\_\<Column\>	|CK_F_FIN_COPA_Year	|
Default	|	DF_	|	\<CSPrefix\>\_\<TableFullName\>\_\<Column\>	|DF_D_PRO_Product_LUD	|

### CS2 : Constraints prefixes
2 letters uppercase depending the constraint's type. Constraints prefixes will be in the following list :

Constraint Type	|	CSPrefix	|
:---	|	:---:	|	
Primary key	|	PK_	|	
Foreign key	|	FK_	|	
Unique key	|	UK_	|	
Check key	|	CK_	|	
Default	|	DF_	|	


