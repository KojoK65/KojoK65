<#
.SYNOPSIS
    This PowerShell script ensures that the WinRM client does not use Basic authentication by disabling the AllowBasic setting in the registry.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-10
    Last Modified   : 2025-04-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000330

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    This script modifies the registry setting to disable Basic authentication for WinRM client.

    Example syntax:
    PS C:\> .\disable_basic_auth_winrm.ps1
#>

# Define the registry path and key name
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client"
$regName = "AllowBasic"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value to 0 to disable Basic authentication
Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord -Force
Write-Host "Basic authentication for WinRM client is disabled." -ForegroundColor Green
