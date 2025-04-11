<#
.SYNOPSIS
    Disables AlwaysInstallElevated to prevent privilege escalation via MSI.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000315

.USAGE
    PS C:\> .\disable_elevated_installer.ps1
#>

$regPath = "HKLM:\Software\Policies\Microsoft\Windows\Installer"
$regName = "AlwaysInstallElevated"

If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord
Write-Host "AlwaysInstallElevated disabled." -ForegroundColor Green
