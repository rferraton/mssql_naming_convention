## Columns naming convention

- **[Global Rules](GlobalRules.md)** and

### C1 : Numeric key columns
Surrogate key numeric columns should be named using the following syntax :
<br/>
**\<reference table name\>\_Skey**

### C2 : Directly-derived columns
Columns that are derived directly from source systems (no transformations applied between source and column) should be the exact name of its source.<br/>
The only difference may be due to the removal / replacement of forbidden characters.<br/>
This applies to the staging area as well as all other areas.

### C3 : Transformed columns
Columns that are the result of transformations can be renamed using the general naming rules

### C4 : Last Update Datetime Column
For SLT databases use **LUD** for the last update datetime

Timestamp columns Used to keep the datetime of last insertion or update of the record <br/>
**\<reference table name\>\_LUD**



### Samples

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
