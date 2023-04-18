Install-Module PowerShellGet -Force

Install-Module –Name ExchangeOnlineManagement

	
Connect-ExchangeOnline

#Get-Mailbox
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "UBC2 B1-1 90 seats"

#Get-DistributionGroup
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


