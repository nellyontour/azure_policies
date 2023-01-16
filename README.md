# README #

Azure Policies For Standard Deployments

### What is this repository for? ###

Repository for Standard Azure Landing Zone deployments. Refer to the Standard Polices List for more details.
Version 1.0.0


## Deployments
To deploy the policies there a are few options. Using Powershell simply use the following format.

$definition = New-AzPolicyDefinition `
    -Name "Apply NSG Flow Log Settings" `
    -Description "Applies Flow Log Settings to NSGs" `
    -Policy "c:\policies\Apply NSG Flow Log Settings.json"



### Who do I talk to? ###
Neil Young
