## Convention de nommage des colonnes

Les règles de nommages des colonnes doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNC1 : Colonne de clef technique
syntaxe de nommage :
<br/>
**ct_\<reference table name\>**


### CNC2 : Transformed columns
Columns that are the result of transformations can be renamed using the general naming rules

### C4 : Last Update Datetime Column
For SLT databases use **LUD** for the last update datetime

Timestamp columns Used to keep the datetime of last insertion or update of the record <br/>
**\<reference table name\>\_LUD**



### Exemple

Object Type	|	Target Area	|	Sample	|	Comment
|	:---	|	:---	|	:---	|:---		|
|	Columns	|	Material Surrogate Key	|	Material_Skey	|	Integer or BigInt	|
|	Columns	|	Customer Surrogate Key	|	Customer_Skey	|	Integer or BigInt	|
|	Columns	|	Invoice Surrogate Key	|	Invoice_Skey	|	Integer or BigInt	|
|		|		|		|		|
|	Columns	|	Last Update Date on D_CUS_Customer	|	D_CUS_Customer_LUD	|	Datetime2	|
|	Columns	|	Last Update Date on D_PRO_Product	|	D_PRO_Product_LUD	|	Datetime2	|
|	Columns	|	Last Update Date on D_FIN_Account	|	D_FIN_Account_LUD	|	Datetime2	|
|	Columns	|	Last Update Date on F_FIN_Invoice	|	F_FIN_Invoice_LUD	|	Datetime2	|
|	Columns	|	Last Update Date on BSEG	|	LUD	|	Datetime2	|
