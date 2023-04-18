# Get the credential
$credential = Get-Credential


# Users: Tab-delimited list with columns named Name, Email, SamAccountName
$SourcePath = "D:\SendMail.csv"
 
# Import: Import the comma-delimited list of users (if tab-delimited, add '-Delimiter "`t"')
$Users = Import-Csv -Path $SourcePath
## Build parameters
$mailParams = @{
    SmtpServer                 = '<tenant>.mail.protection.outlook.com'
    Port                       = '25'
    UseSSL                     = $true   
    From                       = '<email>@xxxx.com'
    To                         = $Users.Email
    Subject                    = "Direct Send $(Get-Date -Format g)"
    Body                       = 'This is a test email using Direct Send'
    DeliveryNotificationOption = 'OnFailure', 'OnSuccess'
}

## Send the email
Send-MailMessage @mailParams

## PLease subscription Youtube : iLikeiT.info ##