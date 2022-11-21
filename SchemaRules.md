## Règles des schémas
Les schémas dans les bases de données sont utilisés pour :
- séparer les objets dans différents namespaces
- disposer d'un ensemble permettant une gestion de la sécurité à ce niveau
- faciliter le packaging applicatif et technique
- gérer un cycle de vie des données des environnements dev/rec (provisionning de données) à ce niveau

Les règles de nommages des schémas doivent respecter les **[Règles Globales](GlobalRules.md)** et les règles suivantes

### CNSC1 : Pattern de nommage
\<type_domaine>_\<domaine(trigramme)>

Voir la liste complète des dommaines : **[Liste des domaines](DomainsList.md)**


## Exemples :

|Type de domaine | Domaine                                      | trigramme | Schema  |
|--------------- | ------------------                           | :--------:|:--------|
|Métier          |Caractéristique                         	    | car       | met_car |
|Métier          |Compétences (matérielles et territoriales)    | cpe       | met_cpe |
|Métier          |Evènement                               	    | eve       | met_eve |
|Métier          |Géographie                	                | geo       | met_geo |
|Métier          |Mesure                                        | mes       | met_mes |
|Métier          |Nature d’Infraction                           | nin       | met_nin |
|Métier          |Références de textes                      	| rte       | met_rte |
|Métier          |Eléments de structure                         | str       | met_str |
|Métier          |Tables élémentaires (Nomenclature)        	| tem       | met_tem |
|Technique       |Administration de base de données             | dba       | tec_dba |
|Technique       |Audit	                                        | aud       | tec_aud |
|Technique       |Gestion des modèles (liquidbase)	            | mod       | tec_mod |
|Technique       |Import/Staging	                            | imp       | tec_imp |
|Technique       |Notification/Log	                            | not       | tec_not |
|Technique       |Paramétrage Applicatif	                    | prm       | tec_prm |
|Technique       |Paramétrage Sécurité	                        | sec       | tec_sec |
|Technique       |Qualité (anomalies,rejets,controles)          | qua       | tec_qua |
|Technique       |Temporaire                                    | tmp       | tec_tmp |
|Technique       |Utilitaire                                    | uti       | tec_uti |
              
