## Indexes naming convention

### Indexes Prefixes and pattern

|	Btree/Column Store	|	Unique/Non Unique	|	Cluster	|	Non-Cluster	|
|	:---	|	:---	|	:---	|	:---	|
|	Column Store	|	Unique	|	NA	|	NA	|
|	Column Store	|	Non Unique	|	CC	|	CX\_\<FullTableName\>	|
|	Btree (Classic)	|	Unique	|	UC\_\<FullTableName\>\[\_xx\] or constraint_name(PK, UK)	|	UX\_\<FullTableName\>\[\_xx\] or constraint_name (FK)	|
|	Btree (Classic)	|	Non Unique	|	IC\_\<FullTableName\>\_\<details\>	|	IX\_\<FullTableName\>\_\<details\>	|


For **details** in index, the objective of the index could be describe : 
- load
- reporting
- extract
