<#
.SYNOPSIS
    Prevents downloading of printer drivers over HTTP to mitigate MITM attacks.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000100

.USAGE
    PS C:\> .\prevent_print_driver_http.ps1
#>

$regPath = "HKLM:\Software\Policies\Microsoft\Windows NT\Printers"
$regName = "DisableWebPnPDownload"

If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name $regName -Value 1 -Type DWord
Write-Host "Downloading print drivers over HTTP is disabled." -ForegroundColor Green
