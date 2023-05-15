<#
=============================================================================================
Name:           Script create sharemailbox  and assign owner with Powershell
Description:    This script for execution create sharemailbox  and assign owner with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/PowershellCreateShareMailbox
============================================================================================
#>
Connect-ExchangeOnline

#Single
#สร้างShareMailboxAccountเดียว
New-Mailbox -Name "<Name Mailbox>" -DisplayName "<DisplaynameSharemailbox>"  -Alias <AliasnameSharemailbox> –Shared -PrimarySmtpAddress <Email UPN Sharemailbox >

#Add Owner to Sharemailbox one Mailbox 
Add-MailboxPermission "<NameSharemail>" -User <name member> -AccessRights FullAccess -InheritanceType all –AutoMapping $False 

#Bulk
#Create Multi Mailbox
$sharemailbox = Import-CSv -Path ".\sharemailbox.csv"
$sharemailbox | ForEach-Object{
New-Mailbox -Name $_.NameMailbox -DisplayName $_.DisplayName –Shared -PrimarySmtpAddress $_.PrimarySmtpAddress
Write-host -f Green "Create Sharemailbox $_.Name  Complete"
}


#Bulk Add Owner to Sharemailbox 
$AddOWNsharemail = Import-CSv -Path ".\ownsharemailbox.csv"
$AddOWNsharemail | ForEach-Object{
Add-MailboxPermission $_.NameMailbox -User $_.member -AccessRights FullAccess -InheritanceType all –AutoMapping $False 
Write-host -f Green "Add member $_.member to  $_.NameMailbox  Complete"
}

#Bulk Assign SEND AS permissions for Shared Mailbox
$AddOWNsharemail = Import-CSv -Path ".\ownsharemailbox.csv"
$AddOWNsharemail | ForEach-Object{
Add-RecipientPermission $_.NameMailbox -Trustee $_.member -AccessRights SendAs -confirm:$False 
Write-host -f Green "Assign SEND AS permissions $_.member to  $_.NameMailbox Complete"
}



#Find Sharemailbox and Add Owner to Sharemailbox 
Get-Mailbox -Filter '(RecipientTypeDetails -eq "SharedMailbox")' | Add-MailboxPermission -User "Chanakarn Korklin" -AccessRights FullAccess -InheritanceType all -AutoMapping $False

Add-MailboxPermission  -User "Abdulloh Etaeluengoh"  ShMailLeeNaja@ilikeit.info  -AccessRights  FullAccess -InheritanceType all -AutoMapping $False

#Assign SEND AS permissions for Shared Mailbox
Add-RecipientPermission "<NameSharemail>" -Trustee <Member> -AccessRights SendAs -confirm:$False 

#Assign SEND AS permissions for ALL Shared Mailbox (Bulk)



Get-Mailbox -Filter '(RecipientTypeDetails -eq "SharedMailbox")' | Add-RecipientPermission -Trustee leekung2020 -AccessRights SendAs -confirm:$False

Get-Mailbox -Identity ShMailLeeNaja@ilikeit.info | fl

Disconnect-ExchangeOnline

