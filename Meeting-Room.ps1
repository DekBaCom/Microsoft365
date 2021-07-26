$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

 
#Get-Mailbox
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "Room1" | Get-Place | Format-Table DisplayName, Building, Floor

 Get-Mailbox -Identity LRoom@ilikeit.info | Format-List Hid*
# Set the location metadata for a room mailbox
Set-Place -Identity "LeeRoom" -CountryOrRegion "United States" -City "San Francisco" -Floor 1 -Capacity 54 -Street "10 Sutter Street" -GeoCoordinates "37.790507; -122.400274" -Building "Western HQ" -State CA -PostalCode 94104 -Phone “+1 206 177 4151" -Label "Training" -VideoDeviceName "Crestron Flex UC-M150-T" -Tags Training, Development, Videoconference 

# Update all OWA mailbox policies in a tenant to allow use of Place information by OWA
Get-OWAMailboxPolicy | ? {$_.PlacesEnabled -eq $False} | Set-OWAMailboxPolicy -PlacesEnabled $True

#Get-Mailbox
Get-Mailbox -RecipientTypeDetails RoomMailbox -Identity "LeeRoom" | Get-Place | Format-Table DisplayName, Building, Floor, CountryOrRegion, City ,Street, GeoCoordinates ,PostalCode ,Phone

#Get-DistributionGroup
Get-DistributionGroup -RecipientTypeDetails RoomList


 #สร้างเมล์ห้องประชุม
New-Mailbox -Alias KPWRoom -Name "xxxRoom" -DisplayName "xxxRoom" -Room
Set-Mailbox -Identity "KPWRoom" -Office XXX

#สร้างกลุ่ม
New-DistributionGroup -Name "xxxRoom" –PrimarySmtpAddress "ThaikkRoom@xxx.co.th" –RoomList

#เพิ่มห้องประชุม
 Add-DistributionGroupMember -Identity "LeeMeetingRoom" -Member "LeeRoom"

 #ตรวจสอบMemberในDistribution
Get-DistributionGroupMember -Identity "LeeMeetingRoom"

#ลบRoomlist
Remove-distributiongroup -Identity "Kaopanwa-HQ"


#Remove Member
Remove-DistributionGroupMember -Identity "Technical Support" -Member "Jan Dryml"

Remove-DistributionGroupMember -Identity "LEETEST"

#Remove-Mailbox

Remove-Mailbox -Identity "room-fl123123"


#CalendarProcessing 
Set-CalendarProcessing -Identity "Room1" -AllBookInPolicy $False -AllRequestInPolicy $False 
Set-Mailbox -Identity "Room1" -MailTip "Rooms are currently unavailable"

Set-CalendarProcessing -Id "Room1" -MaximumDurationInMinutes 1

Get-Mailbox -Identity "LRoom"

Get-DistributionGroup

Set-CalendarProcessing -Identity "Room1" -AllBookInPolicy $True -AllRequestInPolicy $True -MailTip $Null


#Hide-Addresslist

Set-Mailbox -Identity "BKKRoom" -HiddenFromAddressListsEnabled $True

Get-Recipient -ResultSize unlimited -Filter 'HiddenFromAddressListsEnabled -eq $True'
