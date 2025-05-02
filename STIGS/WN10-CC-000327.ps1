<#
.SYNOPSIS
    Enables PowerShell transcription to log all command-line activity.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/KojoK65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000327

.USAGE
    PS C:\> .\enable_powershell_transcription.ps1
#>

$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"

If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name "EnableTranscripting" -Value 1 -Type DWord
Write-Host "PowerShell transcription is enabled." -ForegroundColor Green
