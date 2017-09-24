<#
.SYNOPSIS
    Get Powershell management commands
.DESCRIPTION
    none
.EXAMPLE
    Get-PSManagement
#>
function Get-PSManagement {
  param(
      [string]$filter = "*"
  )
  Get-Command -module Microsoft.PowerShell.Management *$filter*
}
