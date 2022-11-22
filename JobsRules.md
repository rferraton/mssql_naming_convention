## convention de nommage des Jobs de bases de données

Les règles de nommages des jobs doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNJ1 : Parties du nom du jobs
job__\<prefixe\>\_\_\<type_domaine>_\_\<domaine(trigramme)>\_\_\<detail\>

Voir la **[Liste des domaines](DomainsList.md)** 
### CNJ2 : préfixe
|	Signification	|	Préfixe	|
|	:---	|	:---:	|
|	Job Métier	|	met	|
|	Job Technique	|	tec	|


### Exemples

- job__tec__dba__sauvegardes_databases_utilisateur_complete
- job__tec__dba__sauvegardes_databases_utilisateur_differentielle
- job__tec__dba__sauvegardes_databases_utilisateur_journal
- job__tec__dba__maintenance_index_defragmentation
- job__tec__dba__maintenance_maj_statistiques
- job__met__eve__controles_batch

