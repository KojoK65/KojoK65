<#
.SYNOPSIS
    Ensures that Windows Defender Antivirus is enabled and active to protect the system from malware.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/KojoK65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000065

.USAGE
    PS C:\> .\enable_windows_defender.ps1
#>

# Define registry path and key name for Windows Defender Antivirus
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"
$regName = "DisableAntiSpyware"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value to 0 (enabled) to ensure Defender is not disabled
Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord

# Optionally, ensure Defender service is running
Start-Service -Name "WinDefend"

Write-Host "Windows Defender Antivirus protection has been enabled." -ForegroundColor Green
