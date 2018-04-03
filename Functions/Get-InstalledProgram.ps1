<#
.SYNOPSIS
    Get a list of installed software.
.DESCRIPTION
    none
.EXAMPLE
    Get-InstalledProgram
#>

function Get-InstalledProgram {
  Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
    Where-Object {$_.DisplayName -notlike $null} |
    Select-Object DisplayName, DisplayVersion, Publisher, InstallDate, InstallLocation
}
