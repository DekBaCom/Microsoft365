#Powershell-Force-ActiveOndrive
Connect-SPOService -Url https://xxx-admin.sharepoint.com/
$users = Get-Content -Path "D:\user-activeOnedrive.txt"
Request-SPOPersonalSite -UserEmails $users 
