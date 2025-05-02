<#
.SYNOPSIS
    Enables PowerShell Script Block Logging to monitor code execution blocks.

.NOTES
    Author          : Kojo Karl-Agbee
    LinkedIn        : 
    GitHub          : github.com/Kojok65
    Date Created    : 2025-04-10
    Last Modified   : 2025-04-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000326

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : Windows 10
    PowerShell Ver. : 5.1+

.USAGE
    PS C:\> .\enable_script_block_logging.ps1
#>

# Define registry path and key name
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$regName = "EnableScriptBlockLogging"

# Ensure the registry path exists
If (-Not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Enable Script Block Logging
Set-ItemProperty -Path $regPath -Name $regName -Value 1 -Type DWord
