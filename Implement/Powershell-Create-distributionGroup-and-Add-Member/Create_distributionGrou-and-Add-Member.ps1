<#
=============================================================================================
Name:           Script create and assign member to group with Powershell
Description:    This script for execution create and assign member to group with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/Powershell-Create-distributionGroup-and-Add-Member
============================================================================================
#>

#First Connect Exchange Online
﻿#Connect Exchange
Connect-ExchangeOnline

#Create one group with powershell

#Create one DistributionGroup

New-DistributionGroup -Name "groupname" -PrimarySmtpAddress groupname@xxx.co.th 



#Create multiple Distributiongroup
#Create multiple DistributionGroup-สำหรับสร้างครั้งละหลายDistributiongroup
$group = Import-CSv -Path "<Select path file group CSV File >"  #Example path ".\add_Group.csv"
#Stage loop import group 
$group | ForEach-Object{
New-DistributionGroup -Name $_.GroupName -PrimarySmtpAddress $_.Emailgroup
Write-host -f Green "Create Group $_.GroupName to Distribution Group Completed"
}



 #Import-User

$users = Import-CSv -Path ".\add_member.csv"
$users | ForEach-Object{
Add-DistributionGroupMember -Identity $_.group -Member $_.UserprincipalName
Write-host -f Green "Added Member $_.UserprincipalName to Office 365 Group"
}



#set-DistributionGroup-allow-Sending-internalmail

Get-DistributionGroup | where {-not $_.RequireSenderAuthenticationEnabled -eq 'false'} | Set-DistributionGroup -RequireSenderAuthenticationEnabled $False

Get-DistributionGroup | select Name,EmailAddresses | Export-Csv -Path C:\member\exportdistributiongroup.csv