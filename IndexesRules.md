## Convention de nommage des indexes

Les règles de nommages des indexes doivent respecter les **[Règles Globales](GlobalRules.md)** et

### préfixes et patterns des Indexes

|	Btree/Column Store	|	Unique/Non Unique	|	Cluster	|	Non-Cluster	|
|	:---	|	:---	|	:---	|	:---	|
|	Column Store	|	Non Unique	|	cc	|	cx	|
|	Btree (Classique)	|	Unique	|	uc\_\<nomtable\>\[\_xx\] ou [nom contrainte](ConstraintsRules.md)(PK, UK)	|	ux\_\<nomtable\>\[\_xx\] or constraint_name (pk,uk)	|
|	Btree (Classique)	|	Non Unique	|	ic\_\<nomtable\>\_\<details\>	|	ix_\<nomtable\>\_\<details\> ou [nom contrainte](ConstraintsRules.md)(FK)	|


Pour la partie **details** dans les index, les objectif d'un index peuvent être décrit par : 

- chargement
- restitution
- extraction
- generique
