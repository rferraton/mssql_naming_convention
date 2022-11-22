## Convention de nommage des colonnes

Les règles de nommages des colonnes doivent respecter les **[Règles Globales](GlobalRules.md)** et

### CNC1 : Colonne de clef technique (si existante)
syntaxe de nommage :
<br/>
**id__\<racine_nom_table\>**

|colonne                 | description                                                           | commentaire   |
|:--                     |:--                                                                    |:---                   |
|id__table_elementaire   | identifiant technique de la table "ent__table_elementaire"                   |                       |
|id__natinf              | identifiant technique de la table "ent__natinf"                              |                       |

Nota: Cette norme interdit l'utilisation de clef technique pour les tables historiques ou les tables de liens (à valider)

### CNC2 : Préfixe de colonne suivant leur typologie
syntaxe de nommage :
<br/>
**\<prefixe>__\<detail_colonne>**

|préfixe                 | description                     | commentaire/exemple                |
| :--                    |:--                              | :---                               |
| cd                     | Code                            | cd_table_elementaire, cd_element   |
| ds                     | Description                     | ds_erreur                          |
| dt                     | Date                            | dt_evenement                       |
| fl                     | Flag/Booléen                    | fl_externe                         |
| ls                     | Libellé Standard                | ls_natinf                          |
| lr                     | Libellé Réduit                  | lr_natinf                          |
| ll                     | Libellé Long                    | ll_natinf                          |
| va                     | Valeur                          | va_salaire, va_element             |
| ct                     | Commentaire                     | ct_natinf                          |
 
### CNC3 : Colonnes de méta-données
les colonnes de méta données sont préfixées par **meta__**

Colonnes de méta-données dans chaque table ==> 

|colonne                    | description                                                           | commentaire/exemple   |
|:--                        |:--                                                                    |:---                   |
|meta__dt_maj               | date de dernière mise à jour (ou insertion)                           | 2022-11-22T10:47.53   |
|meta__id_utilisateur_maj   | identifiant technique de l'utilisateur ayant fait la dernière mise à jour    | 128                   |


### CNC4 : Colonnes pour la gestion des versions

syntaxe de nommage :
<br/>
**vs__\<extension>**

|colonne                 | description                                                           | commentaire/exemple   |
|:--                     |:--                                                                    |:---                   |
|vs__num_version   | Numéro de version                    |                       |
|vs__natinf__dd   | Date de début de validité  "ent__natinf"                              |                       |
|vs__natinf__df   | Date de fin de validité  "ent__natinf"                              |                       |
|vs__flag_courant




