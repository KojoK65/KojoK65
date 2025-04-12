<#
.SYNOPSIS
    STIG Remediation - WN10-CC-000175: Block App Compatibility Inventory Data Collection

.DESCRIPTION
    Disables the automatic collection of Application Compatibility Inventory data by setting the 
    "DisableInventory" registry key to 1.

.STIG_ID
    WN10-CC-000175

.REFERENCE
    Microsoft Windows 10 Security Technical Implementation Guide

.NOTES
    Author      : Kojo Karl-Agbee
    Last Updated: 2025-04-12
    Tested on   : Windows 10 (Enterprise, Pro)

#>

# === Remediation ===
$regPath = "HKLM:\Software\Policies\Microsoft\Windows\AppCompat"
$regName = "DisableInventory"

# Create the registry path if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the DisableInventory value to 1 (enabled blocking)
New-ItemProperty -Path $regPath -Name $regName -PropertyType DWord -Value 1 -Force | Out-Null

Write-Host "✅ Application Compatibility Inventory collection disabled." -ForegroundColor Green

# === Validation ===
try {
    $val = Get-ItemPropertyValue -Path $regPath -Name $regName
    if ($val -eq 1) {
        Write-Host "✅ Validation passed: DisableInventory = 1" -ForegroundColor Green
    } else {
        Write-Host "❌ Validation failed: DisableInventory = $val" -ForegroundColor Red
    }
} catch {
    Write-Host "❌ Validation error: DisableInventory registry key not found." -ForegroundColor Red
}
