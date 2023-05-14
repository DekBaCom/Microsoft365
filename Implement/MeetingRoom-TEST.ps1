Connect-ExchangeOnline

#Get-Mailbox
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "Main Meeting Room" | Get-Place | Format-Table DisplayName, Building, Floor,CountryOrRegion,Alias



Set-Place -Identity "Main Meeting Room" -CountryOrRegion "Thailand" -City "San Francisco" -Floor 20 -Capacity 15 -Street "Phaya Thai Road" -Building "Spring Tower" -State "Bangkok" -PostalCode 10400 

Get-OWAMailboxPolicy | ? {$_.PlacesEnabled -eq $False} | Set-OWAMailboxPolicy -PlacesEnabled $True

Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "Main Meeting Room" | Get-Place | Format-Table DisplayName, Building, Floor, CountryOrRegion, City ,Street, GeoCoordinates ,PostalCode ,Phone ,Alias,Note




New-Mailbox -Alias KPWRoom -Name "KaopanwaRoom" -DisplayName "KaopanwaRoom" -Room
Set-Mailbox -Identity "KPWRoom" -Office KPW


New-DistributionGroup -Name "ThaiKKRoom" –PrimarySmtpAddress "ThaikkRoom@leedemo.online" –RoomList

Add-DistributionGroupMember -Identity "ThaiKKRoom" -Member "Main Meeting Room"


Get-DistributionGroupMember -Identity "ThaiKKRoom"
Set-DistributionGroup -Identity "ThaiKKRoom" -RoomList


Get-Mailbox "Main Meeting Room" | Select ResourceType,RejectMessagesFrom,RejectMessagesFromDLMembers,RejectMessagesFromSendersOrMembers,SendModerationNotifications