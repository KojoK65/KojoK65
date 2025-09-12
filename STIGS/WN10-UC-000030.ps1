<#
.SYNOPSIS
    Disables Autoplay for all drives to comply with STIG requirements.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2025-09-12
    Last Modified   : 2025-09-12
    Version         : 1.0
    STIG-ID         : WN10-UC-000030

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : Windows 10 
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\Remediate_WN10-UC-000030.ps1
#>

# Disable Autoplay for all drives
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" `
    -Name "NoDriveTypeAutoRun" -Value 255 -Type DWord -Force

Write-Host "✅ WN10-UC-000030: Autoplay disabled for all drives." -ForegroundColor Green
