#Install module 
﻿Install-Module PowerShellGet -Force

#install Module 
Install-Module –Name ExchangeOnlineManagement

#ConnectExchangeonline
Connect-ExchangeOnline

#Get-Mailbox
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "<room name >"

#Get-all-DistributionGroup
Get-DistributionGroup -RecipientTypeDetails RoomList

 #สร้างเมล์ห้องประชุม
New-Mailbox -Alias KPWRoom -Name "xxxRoom" -DisplayName "xxxRoom" -Room
Set-Mailbox -Identity "xxxRoom" -Office xxx

#สร้างกลุ่ม
New-DistributionGroup -Name "ThaiKKRoom" –PrimarySmtpAddress "ThaikkRoom@xxx.co.th" –RoomList

#เพิ่มห้องประชุม
 Add-DistributionGroupMember -Identity "xxx-HQ" -Member Room1@ilikeit.info

 #ตรวจสอบMemberในDistribution
Get-DistributionGroupMember -Identity "xxxRoom"

#ลบRoomlist
Remove-distributiongroup -Identity "xxxRoom"

#Remove Member
Remove-DistributionGroupMember -Identity "Technical Support" -Member "Jan Dryml"


