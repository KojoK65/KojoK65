<#
.SYNOPSIS
    This PowerShell script disables Basic authentication for the WinRM service.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-10
    Last Modified   : 2025-04-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000345

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\disable_basic_authentication_winrm.ps1
#>

# Define the registry path and key name
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service"
$regName = "AllowBasic"

# Ensure the registry path exists, create it if not
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Disable Basic Authentication by setting the registry key to 0
Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord -Force
