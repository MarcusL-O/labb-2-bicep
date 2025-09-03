

az login 

Dev:
az deployment group create --resource-group rg-marcuslisolivebring --template-file .\main.bicep --parameters '@.\parameters\dev.json'


Prod:
az deployment group create --resource-group rg-marcuslisolivebring --template-file .\main.bicep --parameters '@.\parameters\prod.json'


Test:
az deployment group create --resource-group rg-marcuslisolivebring --template-file .\main.bicep --parameters '@.\parameters\test.json'





Prod:
az keyvault secret set --vault-name 'YourVaultName' --name 'SecretName' --value 'YourSecretHere'


Dev:
az keyvault secret set --vault-name 'YourVaultName' --name 'SecretName' --value 'YourSecretHere'


Test:
az keyvault secret set --vault-name 'YourVaultName' --name 'SecretName' --value 'YourSecretHere'


Setting secret:


policys för secret..
In azure portal of chosen keyvault -> Access policies -> Create -> Secret permissions Get, List, Set -> Principal Your account -> Create
