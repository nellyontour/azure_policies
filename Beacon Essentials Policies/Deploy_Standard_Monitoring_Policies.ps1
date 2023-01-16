#Set Azure Policy For Recovery Vault Monitoring Log Analytics
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "apply-diagnostic-setting-recoveryvault-loganalytics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Apply Diagnostic Settings for Recovery Vault to a Log Analytics Workspace" `
 -description "This policy automatically deploys diagnostic settings for Azure Recovery Vault to point to a Log Analytics Workspace." `
 -Policy '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.RecoveryServices-vaults\azurepolicy.rules.json' `
 -Parameter '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.RecoveryServices-vaults\azurepolicy.parameters.json' 
$definition

#Set Azure Policy For Virtual Machine Monitoring To Log Analytics
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "apply-diagnostic-setting-virtualmachines-loganalytics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Apply Diagnostic Settings for Virtual Machines to a Log Analytics Workspace" `
 -description "This policy automatically deploys diagnostic settings for Virtual Machines to point to a Log Analytics Workspace." `
 -Policy '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Compute-virtualMachines\azurepolicy.rules.json' `
 -Parameter '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Compute-virtualMachines\azurepolicy.parameters.json' 
$definition

#Set Azure Policy For Key Vault Monitoring To Log Analytics
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "apply-diagnostic-setting-keyvaults-loganalytics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Apply Diagnostic Settings for Key Vault to a Log Analytics Workspace" `
 -description "This policy automatically deploys diagnostic settings for Key Vault to point to a Log Analytics Workspace." `
 -Policy '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.KeyVault-vaults\azurepolicy.rules.json' `
 -Parameter '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.KeyVault-vaults\azurepolicy.parameters.json' 
$definition

#Set Azure Policy For Storage Account Monitoring To Log Analytics
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "apply-diagnostic-setting-storageaccounts-loganalytics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Apply Diagnostic Settings for Storage Accounts to a Log Analytics Workspace" `
 -description "This policy automatically deploys diagnostic settings for Storage Accounts to point to a Log Analytics Workspace." `
 -Policy '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Storage-storageAccounts\azurepolicy.rules.json' `
 -Parameter '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Storage-storageAccounts\azurepolicy.parameters.json' 
$definition

#Set Azure Policy For Network Security Group Monitoring To Log Analytics
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "apply-diagnostic-setting-networksecuritygroup-loganalytics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Apply Diagnostic Settings for Network Security Groups to a Log Analytics Workspace" `
 -description "This policy automatically deploys diagnostic settings for Network Security Groups to point to a Log Analytics Workspace." `
 -Policy '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Network-networkSecurityGroups\azurepolicy.rules.json' `
 -Parameter '.\PolicyExports\Apply-Diag-Settings-LA-Microsoft.Network-networkSecurityGroups\azurepolicy.parameters.json' 
$definition