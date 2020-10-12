## Procedures naming convention

- **[Global Rules](GlobalRules.md)** and

### P1 : Procedure naming parts
\<PREFIX\>\_\<DOMAIN\>\_\<Type\>\_\<Detail\>

### P2 : Procedure prefix
the user stored procedures must be prefixed by **USP\_**

### P3 : Procedure pattern and domain list

See - **[Domains List](DomainsList.md)** 

### P4 : Procedure type

Procedure objective | Type |
:---|:---:|
return a dataset |  Get |
load a table | Load |
purge a table | Purge |
prepare a table before loading |PreLoad|
prepare a table after loading | PostLoad|
Push data | Put |

### Samples

- USP_PUR_Load_F_PUR_Invoice
- USP_PUR_PreLoad_F_PUR_Invoice
- USP_PUR_PostLoad_F_PUR_Invoice
- USP_FIN_Load_D_FIN_Account
- USP_FIN_Purge_F_FIN_Invoice
- USP_MDM_GetPreviousFiscalMonth
- USP_TEC_Put_Log

