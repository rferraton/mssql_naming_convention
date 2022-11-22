## Convention de nommage des indexes

Les règles de nommages des indexes doivent respecter les **[Règles Globales](GlobalRules.md)** et

### préfixes et patterns des Indexes

|	Btree/Column Store	|	Unique/Non Unique	|	Cluster	|	Non-Cluster	|
|	:---	|	:---	|	:---	|	:---	|
|	Column Store	|	Non Unique	|	cc	|	cx	|
|	Btree (Classique)	|	Unique	|	uc\_\_\<nomtable\>\[\_xx\] ou [nom contrainte](ConstraintsRules.md)(pk, uk)	|	ux\_\_\<nomtable\>\[\_xx\] or constraint_name (pk,uk)	|
|	Btree (Classique)	|	Non Unique	|	ic\_\_\<nomtable\>\_\_\<details\>	|	ix\_\_<nomtable\>\_\_\<details\> ou [nom contrainte](ConstraintsRules.md)(fk)	|


Pour la partie **details** dans les index, les objectif d'un index peuvent être décrit par : 

- chargement
- recherche
- restitution
- extraction


## Exemples :
- uk__d_table_elementaire__code_mnemonique
- ix__d_table_elementaire__extraction_date_maj
- ix__d_natinf_recherche__lib_natinf
- ix__d_natinf_extraction__date_maj

