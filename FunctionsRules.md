## Conventions de nommages des fonctions de base de données

- **[Rèles globale](GlobalRules.md)** et

### CNF1 : Pattern de nommage
udf\_\<domaine(trigramme)\>\_\<type\>\_\<detail\>

voir **[la liste des domaines](DomainsList.md)** 

### CNF2 : Types de fonction

Objectif de la fonction | Type |
:---|:---|
Converting ou remplacer | cvt |
Generer un scalaire ou un ensemble | gen |
Récupérer un scalaire ou un ensemble |  get |
Tester quelque chose |tst|
||
Autre | autre |


### Exemples

- udf_dba_get_databases
- udf_eve_get_date_evenement
- udf_eve_get_evenements
- udf_uti_gen_nombre_aleatoire
- udf_uti_tst_est_ferie

