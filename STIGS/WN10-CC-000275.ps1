<#
.SYNOPSIS
    Disables the built-in Guest account to comply with STIG requirements.

.NOTES
    Author          : Kojo Karl-Agbee 
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2025-09-12
    Last Modified   : 2025-09-12
    Version         : 1.0
    STIG-ID         : WN10-CC-000275

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : Windows 10
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\Remediate_WN10-CC-000275.ps1
#>

# Disable the Guest account
net user Guest /active:no

Write-Host "✅ WN10-CC-000275: Guest account disabled." -ForegroundColor Green
