<#
=============================================================================================
Name:           Script force active onedrive with Powershell
Description:    This script for execution force active onedrive with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/Powershell-force-ActiveOndrive
============================================================================================
#>
#Powershell-Force-ActiveOndrive
Connect-SPOService -Url https://xxx-admin.sharepoint.com/
$users = Get-Content -Path "D:\user-activeOnedrive.txt"
Request-SPOPersonalSite -UserEmails $users 
