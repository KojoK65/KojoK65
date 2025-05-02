<#
.SYNOPSIS
    STIG Remediation - WN10-CC-000220: Confirm SMBv1 Client is Disabled

.DESCRIPTION
    This script ensures that SMBv1 client is disabled to mitigate known vulnerabilities in older versions of the SMB protocol.

.STIG_ID
    WN10-CC-000220

.REFERENCE
    Microsoft Windows 10 Security Technical Implementation Guide

.NOTES
    Author      : Kojo Karl-Agbee
    Last Updated: 2025-04-12
    Tested on   : Windows 10 (Enterprise, Pro)

#>

# === Remediation: Disable SMBv1 Client ===
$regKey = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters"
$regValue = "SMB1"

# Check if SMBv1 is disabled, and disable it if necessary
$existingValue = Get-ItemProperty -Path $regKey -Name $regValue -ErrorAction SilentlyContinue

if ($existingValue) {
    Write-Host "❌ SMBv1 is enabled. Disabling now..." -ForegroundColor Yellow
    Set-ItemProperty -Path $regKey -Name $regValue -Value 0
    Write-Host "✅ SMBv1 client has been DISABLED." -ForegroundColor Green
} else {
    Write-Host "✅ SMBv1 client is already DISABLED." -ForegroundColor Green
}
