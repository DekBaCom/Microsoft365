<#
=============================================================================================
Name:           Script add Alias Mail to a mailbox with Powershell
Description:    This script for execution add Alias Mail to mailbox with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/PowershellCreateAccount
============================================================================================
#>

#Install-Module 

Install-Module -Name ExchangeOnlineManagement -Force -AllowClobber
Import-Module -Name ExchangeOnlineManagement

#Connect-Exchange
Connect-ExchangeOnline

#SingleMailbox
#Alias Mail
Set-Mailbox -Identity "mail@xxx.com" -EmailAddresses @{Add="alias@m365.leedemo.online"}

#Get-Detail
Get-Mailbox -Identity "mail@xxx.com" | Select-Object -ExpandProperty EmailAddresses

#Add Multiple Mailbox 
# Import the Exchange Online PowerShell module
Import-Module -Name ExchangeOnlineManagement

# Define the list of users and aliases in a CSV file
$csvPath = ".\Alias.csv"

# Read the CSV file
$users = Import-Csv -Path $csvPath

# Iterate through each user in the CSV file
foreach ($user in $users) {
    $userEmail = $user.Email
    $aliasEmail = $user.Alias

    # Add the alias for the user
    Set-Mailbox -Identity $userEmail -EmailAddresses @{Add=$aliasEmail}

    # Output the result
    Write-Host "Added alias '$aliasEmail' for user '$userEmail'."
}



