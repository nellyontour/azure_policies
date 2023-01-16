#Set Azure Policy For Enforcing No Public Ips on VMs
Select-AzSubscription -SubscriptionName "Technology Foundations"
$definition = New-AzPolicyDefinition -Name "deny-public-ip-on-nics" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Deny Public IPs on Virtual Machine NICs" `
 -description "This policy denies public Ips on Virtual Machine NICs." `
 -Policy '.\EnforcePolicies\Enforce-DenyPublicIPOnNic\azurepolicy.rules.json' `
 -Parameter '.\EnforcePolicies\Enforce-DenyPublicIPOnNic\azurepolicy.parameters.json' 
$definition

$definition = New-AzPolicyDefinition -Name "deny-unauthorised-regions" `
 -Metadata '{ "category":"Beacon" }' `
 -DisplayName "BEACON: Deny Unauthorised Regions" `
 -description "This policy denies deployments outsiode of unauthorised Australian Regions." `
 -Policy '.\EnforcePolicies\Enforce-AllowedRegions\azurepolicy.rules.json' `
 -Parameter '.\EnforcePolicies\Enforce-AllowedRegions\azurepolicy.parameters.json' 
$definition
