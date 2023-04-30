Connect-ExchangeOnline

#Set DKIM
New-DkimSigningConfig -DomainName <Domain> -Enabled $false
Get-DkimSigningConfig -Identity <Domain> | Format-List Selector1CNAME, Selector2CNAME

Set-DkimSigningConfig -Identity <Domain> -Enabled $true  

#Ref: https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-dkim-configure?view=o365-worldwide
#Testing DKIM  URL :  https://admin.microsoft.com/AdminPortal/?searchSolutions=DKIM#/homepage

