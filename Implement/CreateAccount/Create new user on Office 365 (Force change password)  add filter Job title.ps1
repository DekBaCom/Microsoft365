#Install-Module
Install-Module MSOnline



#Connect-ExchangeOnline
Connect-MsolService

#Get-SKU
Get-MsolAccountSku

#Import-User
$users = Import-Csv D:\Github-M365\Microsoft365\Implement\CreateAccount\pilot01.csv

#LoopCreateNewUser
$users | ForEach-Object {New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName -DisplayName $_.DisplayName -Title $_.Title -Department $_.Department -Office $_.Office -StreetAddress $_.StreetAddress -State $_.State -City $_.City -Country $_.Country -PostalCode $_.PostalCode -UsageLocation $_.UsageLocation -AlternateEmailAddresses $_.AlternateEmailAddresses -Password "P@ssw0rd" -LicenseAssignment $_.AccountSkuId -ForceChangePassword $true}  

#Split-Loop-Assign-License
$users | ForEach-Object {Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -AddLicenses $_.AccountSkuId}  


#https://docs.microsoft.com/en-us/powershell/module/msonline/new-msoluser?view=azureadps-1.0