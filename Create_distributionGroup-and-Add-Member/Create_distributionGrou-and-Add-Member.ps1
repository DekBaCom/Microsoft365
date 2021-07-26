#Connect Exchange
Connect-ExchangeOnline

#Create-New-DistributionGroup-Multi
$group = Import-CSv -Path "C:\member\add_Group.csv"
$group | ForEach-Object{
New-DistributionGroup -Name $_.GroupName -PrimarySmtpAddress $_.Emailgroup
Write-host -f Green "Create Group $_.GroupName to Office 365 Group"
}


#Create-New-DistributionGroup one group

New-DistributionGroup -Name "groupname" -PrimarySmtpAddress groupname@xxx.co.th 

#Import-User

$users = Import-CSv -Path "C:\member\add_member.csv"

 

$users | ForEach-Object{
Add-DistributionGroupMember -Identity $_.group -Member $_.UserprincipalName
Write-host -f Green "Added Member $_.UserprincipalName to Office 365 Group"
}

#set-DistributionGroup-allow-Sending-internalmail

Get-DistributionGroup | where {-not $_.RequireSenderAuthenticationEnabled -eq 'false'} | Set-DistributionGroup -RequireSenderAuthenticationEnabled $False

Get-DistributionGroup | select Name,EmailAddresses | Export-Csv -Path C:\member\exportdistributiongroup.csv