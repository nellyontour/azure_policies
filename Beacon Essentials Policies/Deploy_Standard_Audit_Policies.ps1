#Set Azure Policy For Auditing Network Security Groups
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "audit-unassigned-network-security-groups" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Audit Unassigned Network Security Groups" `
 -description "This policy audits Network Security Groups that are not assigned to a NIC or Subnet." `
 -Policy '.\AuditPolicies\Audit-UnassignedNSG\azurepolicy.rules.json' `
 -Parameter '.\AuditPolicies\Audit-UnassignedNSG\azurepolicy.parameters.json' 
$definition
#Set Azure Policy For Auditing Resource Group Tags
$definition = New-AzPolicyDefinition -Name "audit-resource-group-owner-tag" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Audit Resource Groups For Owner Tag" `
 -description "This policy audits Resource Groups For The Owner Tag." `
 -Policy '.\AuditPolicies\Audit-ResourceTagsInherited\azurepolicy.rules.json' `
 -Parameter '.\AuditPolicies\Audit-ResourceTagsInherited\azurepolicy.parameters.json' 
$definition
#Set Azure Policy For Auditing Storage HTTPS Access
$definition = New-AzPolicyDefinition -Name "audit-storage-https-access" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Audit Storage Accounts For HTTPS Access" `
 -description "This policy audits Storage Accounts For HTTPs Access." `
 -Policy '.\AuditPolicies\Audit-StorageHTTPS\azurepolicy.rules.json' `
 -Parameter '.\AuditPolicies\Audit-StorageHTTPS\azurepolicy.parameters.json' 
$definition
#Set Azure Policy For Auditing Unencrypted Disks
$definition = New-AzPolicyDefinition -Name "audit-unencrypted-disks" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Audit Unencrypted Virtual Machine Disks" `
 -description "This policy audits all attached disks for encryption." `
 -Policy '.\AuditPolicies\Audit-UnencryptedDisks\azurepolicy.rules.json' `
 -Parameter '.\AuditPolicies\Audit-UnencryptedDisks\azurepolicy.parameters.json' 
$definition
#Set Azure Policy For Auditing Activity Log Retention
$definition = New-AzPolicyDefinition -Name "audit-activitylog-retention" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Audit Activity Log For Tear Retention" `
 -description "This policy audits the activity logf to ensure 1 year retention." `
 -Policy '.\AuditPolicies\Audit-ActivityLogRetention\azurepolicy.rules.json' `
 -Parameter '.\AuditPolicies\Audit-ActivityLogRetention\azurepolicy.parameters.json' 
$definition