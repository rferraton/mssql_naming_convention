## Functions naming convention

- **[Global Rules](GlobalRules.md)** and

### F1 : Function naming parts
\<PREFIX\>\_\<DOMAIN\>\_\<Type\>\_\<Detail\>

### F2 : Function prefix
the user stored Functions must be prefixed by **UDF\_**

### F3 : Function pattern and domain list

See - **[Domains List](DomainsList.md)** 

### F4 : Function type

Function objective | Type |
:---|:---:|
Retrieve a data or dataset |  Get |
Convert or replace somesthing | Convert |
Generate data or dataset | Generate |
Test something |Test|
Other | Other|


### Samples

- UDF_PUR_Get_Invoice_LastId
- UDF_TIF_Get_PreviousFiscalMonth
- UDF_TIF_Test_IsPreviousFiscalMonth
- UDF_TEC_Generate_RandomNumber

