	
#Connect
Connect-ExchangeOnline

#Get-Mailbox-All Mailbox 
Get-Mailbox -RecipientTypeDetails RoomMailbox

#Get-Mailbox-Detail
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "Main Meeting Room"

#Get-DistributionGroup
Get-DistributionGroup -RecipientTypeDetails RoomList

 #สร้างเมล์ห้องประชุม
New-Mailbox -Alias KPWRoom -Name "KaopanwaRoom" -DisplayName "KaopanwaRoom" -Room
Set-Mailbox -Identity "KPWRoom" -Office KPW

#สร้างกลุ่มRoomlist
New-DistributionGroup -Name "ZortoutHQ" –PrimarySmtpAddress "ZortoutHQ@leedemo.online" –RoomList

#เพิ่มห้องประชุม
 Add-DistributionGroupMember -Identity "Kaopanwa-HQ" -Member Room1@ilikeit.info

 #ตรวจสอบMemberในDistribution
Get-DistributionGroupMember -Identity "ThaiKKRoom"

#ลบRoomlist
Remove-distributiongroup -Identity "ThaiKKRoom"

#Remove Member
Remove-DistributionGroupMember -Identity "Technical Support" -Member "Jan Dryml"

