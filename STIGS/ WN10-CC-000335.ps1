<#
.SYNOPSIS
    Configures WinRM client to block unencrypted traffic to comply with STIG requirements.

.NOTES
    Author          : Ben
    Date Created    : 2025-09-12
    Last Modified   : 2025-09-12
    Version         : 1.0
    STIG-ID         : WN10-CC-000335

.TESTED ON
    Systems Tested  : Windows 10 VM (Azure)
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\Remediate_WN10-CC-000335.ps1
#>

# Disable unencrypted WinRM client traffic
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client" `
    -Name "AllowUnencryptedTraffic" -Value 0 -Force

Write-Host "✅ WN10-CC-000335: WinRM client disallows unencrypted traffic." -ForegroundColor Green
