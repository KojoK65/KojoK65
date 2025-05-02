<#
.SYNOPSIS
    Enables failure auditing for Credential Validation under Account Logon events.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-10
    Last Modified   : 2025-04-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : Windows 10
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\enable_credential_validation_audit.ps1
#>

# Enable auditing of Credential Validation failures
AuditPol /set /subcategory:"Credential Validation" /failure:enable
