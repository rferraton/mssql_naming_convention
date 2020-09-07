## Columns naming convention

### C1 : Numeric key columns
Surrogate key numeric columns should be named using the following syntax :
<br/>
**\<reference table name\>\_Skey**



__Samples__

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
|	Columns	|	Last Update Date on BSEG	|	BSEG_LUD	|	Datetime2	|
