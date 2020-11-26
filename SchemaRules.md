## Schemas Rules

- **[Global Rules](GlobalRules.md)** and

Schemas in databases are used to :
- separate objects in differents namespaces
- provide a kind of groups of objects where security access may be applied

### SC1 : Case
Schema name should be **lowercase.**

### SC2 : schema names list

|	Object Type	|	Target Area	|	Sample	|	Comment	|
| :---       |    :---   | :---       | :--- |		
|	schema	|	default	|	dbo	|	default schema to store objects in the database	|
|	schema	|	Temporary data	|	tmp	|	temporary data objects use while preparing data	|
|	schema	|	Admin and parameters	|	adm	|	admin and parameters tables	|
|	schema	|	Logging tables	|	log	|	logging, notifications or traces tables	|
|	schema	|	Anomalies or rejects data	|	ano	|	Anomalies or rejects data	|
|	schema	|	Objects for reporting tools	|	rep	|	Tables, Views and tables functions or stored procedure for reporting tools	|
|	schema	|	Metadata	|	met	|	Meta informations other than logs data	|
|	schema	|	staging area	|	stg	|	tables used to ingest data into the platform but unusable as such	|
 
 
**schemas only for the BKP_DATACOPY Database**

|	Object Type	|	Target Area	|	Sample	|	Comment	|
| :---       |    :---   | :---       | :--- |	
|	schema	|	Source database name	|	dwh_sigma	|	Backup schema in the BKP_DATACOPY Database	|
|	schema	|	Source database name	|	sap_agile	|	Backup schema in the BKP_DATACOPY Database	|


