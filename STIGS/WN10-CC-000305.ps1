<#
.SYNOPSIS
    Prevents indexing of encrypted files by Windows Search.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : Kojo Karl-Agbee
    GitHub          : github.com/KojoK65
    Date Created    : 2025-04-11
    Last Modified   : 2025-04-11
    Version         : 1.0
    STIG-ID         : WN10-CC-000305

.USAGE
    PS C:\> .\disable_encrypted_file_indexing.ps1
#>

$regPath = "HKLM:\Software\Policies\Microsoft\Windows\Windows Search"
$regName = "AllowIndexingEncryptedStoresOrItems"

If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name $regName -Value 0 -Type DWord
Write-Host "Indexing of encrypted files disabled." -ForegroundColor Green
