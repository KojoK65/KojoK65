<#
.SYNOPSIS
    This PowerShell script configures Windows telemetry to "Basic" by setting the AllowTelemetry registry key value.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2024-09-09
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000205

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-CC-000205).ps1 
#>

$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$regValue = "AllowTelemetry"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the AllowTelemetry value to 1 (Basic telemetry)
Set-ItemProperty -Path $regPath -Name $regValue -Value 1

# Verify if the change was successful
$telemetryValue = Get-ItemProperty -Path $regPath -Name $regValue
Write-Output "AllowTelemetry value is: $($telemetryValue.AllowTelemetry)"
