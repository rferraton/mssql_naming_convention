## Conventions de nommages des fonctions de base de données

- **[Rèles globale](GlobalRules.md)** et

### CNF1 : Pattern de nommage
udf\_\_\<type\>\_\_\<detail\>

voir **[la liste des domaines](DomainsList.md)** 

### CNF2 : Types de fonction

Objectif de la fonction | Type |
:---|:---|
Convertir ou remplacer | cvt |
Generer un scalaire ou un ensemble | gen |
Récupérer un scalaire ou un ensemble |  get |
Tester quelque chose | tst |
||
Autre | autre |


### Exemples

- udf__get__databases
- udf__get__date_evenement
- udf__get__evenements
- udf__gen__nombre_aleatoire
- udf__tst__est_ferie

