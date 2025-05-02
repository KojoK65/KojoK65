<#
.SYNOPSIS
    This PowerShell script ensures that the Convenience PIN for Windows 10 is disabled by setting the AllowDomainPINLogon registry key to 0.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-09
    Last Modified   : 2025-04-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000370

.TESTED ON
    Date(s) Tested  : 2025-04-09
    Tested By       : Kojo Karl-Agbee
    Systems Tested  : Windows 10
    PowerShell Ver. : 7.x

.USAGE
    Example syntax:
    PS C:\> .\Disable_Convenience_PIN.ps1
#>

$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Disable Convenience PIN
Set-ItemProperty -Path $regPath -Name "AllowDomainPINLogon" -Value 0
