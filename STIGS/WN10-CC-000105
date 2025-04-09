<#
.SYNOPSIS
    This PowerShell script disables the lock screen slideshow on Windows systems by setting the NoLockScreenSlideshow registry key to 1.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-09
    Last Modified   : 2025-04-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000105

.TESTED ON
    Date(s) Tested  : 2025-04-09
    Tested By       : Kojo
    Systems Tested  : Windows 10 VM in Azure
    PowerShell Ver. : 5.1

.USAGE
    To run this script, execute it from an elevated PowerShell session.
    Example:
    PS C:\> .\WN10-CC-000105_Disable-LockScreenSlideshow.ps1
#>

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set or update the NoLockScreenSlideshow value
Set-ItemProperty -Path $regPath -Name "NoLockScreenSlideshow" -Value 1 -Type DWord
