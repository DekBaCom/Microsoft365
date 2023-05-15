<#
=============================================================================================
Name:           Script create meeting room and Room list with Powershell
Description:    This script for execution  meeting room and Room list with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/RoomMeeting
============================================================================================
#>
#Connect Exchange
Connect-ExchangeOnline

# Add single
#Get-DistributionGroup
Get-DistributionGroup -RecipientTypeDetails RoomList

#Create New-DistributionGroup Roomlist
New-DistributionGroup -Name "xxxRoom" –PrimarySmtpAddress "xxxRoom@xxx.co.th" –RoomList

#สร้างเมล์ห้องประชุม
New-Mailbox -Alias ZortMeeting01 -Name "ZortMeeting1" -DisplayName "ZortMeeting1" -Room
Set-Mailbox -Identity "ZortMeeting01" -Office HeadOffice -ResourceCapacity "20"

#Get-Mailbox
Get-Mailbox -Identity "Meeting01" | Format-List

#เพิ่มห้องประชุม
 Add-DistributionGroupMember -Identity "xxxHQ" -Member ZortMeeting01@leedemo.online

 #ตรวจสอบMemberในDistribution Roomlist
Get-DistributionGroupMember -Identity "xxxHQ" | Format-List


#Add Multiple loop

#Create New-DistributionGroup Roomlist
$roomlist = Import-CSv -Path ".\DistributionGroupRoomlist.csv"
$roomlist | ForEach-Object{
New-DistributionGroup -Name $_.RoomlistName -PrimarySmtpAddress $_.EmailRoomlist -RoomList
Write-host -f Green "Create DistributionGroup Roomlist $_.RoomlistName and Email $_.EmailRoomlist  to Calendar Meeting"
}


#Create New-MeetingRoom
$MeetingRoom = Import-CSv -Path ".\Meetingroom.csv"
$MeetingRoom | ForEach-Object{
New-Mailbox -Alias $_.Alias -Name $_.Name -DisplayName $_.DisplayName  -Room
Set-Mailbox -Identity $_.Name -Office $_.Office -ResourceCapacity $_.Capacity

Write-host -f Green "Create MeetingRoom : $_.DisplayName MeetingRoom"

}


#Add Meetingroom to Roomlist

$Meetingroom = Import-CSv -Path ".\DistributionGroupMember.csv"

$Meetingroom | ForEach-Object{
Add-DistributionGroupMember -Identity $_.group -Member $_.Member
Write-host -f Green "Added Meetingroom $_.Member to Roomlist $_.group"
}