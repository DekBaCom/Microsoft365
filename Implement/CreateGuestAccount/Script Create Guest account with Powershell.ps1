<#
=============================================================================================
Name:           Script Create Guest account with Powershell
Description:    This script for execution create guest account to Azure AD with Powershell
Script by:      Abdulloh Etaeluengoh
Tiktok : @ilikeit.info
Facebook :  ilikeit.info
Youtube : ilikeit.info
Github : DekBaCom
E-Mail:  Abdulloh.eg@gmail.com
For detailed Script execution: https://github.com/DekBaCom/Microsoft365/tree/main/Implement/Alias-Mail

Ref : https://morgantechspace.com/2021/12/how-to-add-guest-users-in-bulk-to-azure-ad-using-powershell.html
============================================================================================
#>

#First  
#Connect Azure AD 
Connect-AzureAD

#Invite a new external user to Azure AD
$GuestUserName = "kimdemo"  #DisplayName
$GuestUserEmail = "kim_navy@hotmail.com"  # Example : AlexW@ExternalDomain.com
New-AzureADMSInvitation -InvitedUserDisplayName $GuestUserName -InvitedUserEmailAddress $GuestUserEmail -InviteRedirectURL https://myapps.microsoft.com -SendInvitationMessage $true


Get-AzureADUser -Filter "UserType eq 'Guest'" | Select DisplayName, UserState, UserPrincipalName


