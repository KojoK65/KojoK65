<#
.SYNOPSIS
    This PowerShell script disables the use of Digest authentication for WinRM on Windows 10.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/KojoK65
    Date Created    : 2025-04-10
    Last Modified   : 2025-04-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000360

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\disable_winrm_digest_auth.ps1
#>

# Define the registry path and key name
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client"
$regName = "AllowDigest"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Disable Digest authentication for WinRM by setting the registry key to 0
Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord -Force
