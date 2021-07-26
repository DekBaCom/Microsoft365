# Get the credential
$credential = Get-Credential


# Users: Tab-delimited list with columns named Name, Email, SamAccountName
$SourcePath = "D:\SendMail.csv"
 
# Import: Import the comma-delimited list of users (if tab-delimited, add '-Delimiter "`t"')
$Users = Import-Csv -Path $SourcePath

## Define the Send-MailMessage parameters
$mailParams = @{
    SmtpServer                 = 'smtp.office365.com'
    Port                       = '587' # or '25' if not using TLS
    UseSSL                     = $true ## or not if using non-TLS
    Credential                 = $credential
    From                       = 'xxx@xxx.com'
    To                         = $Users.Email
    Subject                    = "SMTP Client Submission - $(Get-Date -Format g)"
    Body                       = 'This is a test email using SMTP Client Submission'
    DeliveryNotificationOption = 'OnFailure', 'OnSuccess'
}

## Send the message
Send-MailMessage @mailParams

## PLease subscription Youtube : iLikeiT.info ##