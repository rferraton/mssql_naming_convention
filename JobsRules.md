## convention de nommage des Jobs de bases de données

Les règles de nommages des jobs doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNJ1 : Parties du nom du jobs
job_\<prefixe\>\_\<domaine(trigramme)\>\_\<detail\>

Voir la **[Liste des domaines](DomainsList.md)** 
### CNJ2 : préfixe
|	Signification	|	Préfixe	|
|	:---	|	:---:	|
|	Job Métier	|	met	|
|	Job Technique	|	tec	|


### Exemples

- tec_dba_sauvegardes_databases_utilisateur_complete
- tec_dba_sauvegardes_databases_utilisateur_differentielle
- tec_dba_sauvegardes_databases_utilisateur_journal
- tec_dba_maintenance_index_defragmentation
- tec_dba_maintenance_maj_statistiques
- met_eve_controles_batch

