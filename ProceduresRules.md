## Convention de nommages des procédures

Les règles de nommages des procédures doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNP1 : Pattern de nommage
usp__\<type\>\__\<detail\>

Voir la **[liste des domaines](DomainsList.md)** 

### CNP2 : Types de procédure

objectif de la procédure  | type |
:---|:---|
renvoyer une valeur ou en ensemble |  get |
alimenter une table (en batch) | load |
purger une table | purge |
preparer une table avant chargement |preload|
prepare a table after loading | postload|
pousser de la données dans une table | put |

### Exemples

- usp__load__f_evenement
- usp__load__d_nature_infractione
- usp__put_log

