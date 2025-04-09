<#
.SYNOPSIS
    Disables camera access from the Windows 10 lock screen.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : https://github.com/KojoK65
    Date Created    : 2025-04-09
    Last Modified   : 2025-04-09
    Version         : 1.2
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 2025-04-09
    Tested By       : Kojo Karl-Agbee
    Systems Tested  : Windows 10 VM (Azure)
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\Remediate_WN10-CC-000005.ps1
#>

# CODE
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set or update the NoLockScreenCamera value
Set-ItemProperty -Path $regPath -Name "NoLockScreenCamera" -Value 1 -Type DWord
