<#
.SYNOPSIS
    Disables GameDVR and GameBar to comply with security standards.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000252

.USAGE
    PS C:\> .\disable_game_recording.ps1
#>

$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR"

If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name "AllowGameDVR" -Value 0 -Type DWord
Write-Host "Game recording and broadcasting disabled." -ForegroundColor Green
