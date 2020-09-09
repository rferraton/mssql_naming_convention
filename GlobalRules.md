## Global Rules

### G1 : Allowed characters

| Syntax      | Description | 
| :---        |    :----:   |
|[a-z][A-Z]_  | Alphanumerical characters (a to z ; A to Z and 0 to 9) and _ only |

### G2 : Case
All object names should be written in **[UpperCamelCase](https://en.wikipedia.org/wiki/Camel_case)**

| eg.      | Description | 
| :---     |    :----:   |
|MaterialId| Id for Material|
|SalesOrganization| Sales Organization|

### G3 : Prefixes
Prefixes are written in <b> upper case and followed by "_" </b>

#### exemples with tables or views prefixes list :  

| Object Type       |	Prefix      |	Description |
| :---              |    :----:   | ---:        |
| Tables and Views  |	F_          |	Fact tables or views|
| Tables and Views  |	D_          |	Dimension / referential tables or views |
| Tables and Views  |	A_          |	Anomalies or Rejects tables or views |
| Tables and Views  |	L_          |	Links tables or views |
| Tables and Views  |	T_          |	Transformation tables (YTD,12RM…) or views |
| Tables and Views  |	S_          |	Subscriptions tables or views |
| Tables and Views  |	Z_          |	Temp or work tables |
| Tables and Views  |	P_          |	Parameters tables or views |
| Tables and Views  |	M_          |	Metadata tables or views |
| Tables and Views  |	N_          |	Logging, Notifications, Traces tables or views |

### G4 : Use singular for object name
for example : use Customer and not Customers

### G5 : First char of Object Name must be an Alphabetical char
**No number at the beginning** of the name of the object.
For exemple avoid 0_PRODUCT

### G6 : Avoid use Reserved Word
For column naming, avoid to use [reserved word](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/reserved-keywords-transact-sql?view=sql-server-ver15)
For example avoid naming a column ***Date*** and prefer ***RefDate***

### G7 : Use English
When we are not replicating source system names, all objects must be named in **English**
*Invoice* and not *Facture*
This applies to names and comment sections of the code

### G8 : Limit number of characters
Name size should be limited as much as possible but respect all the formatting rules.
