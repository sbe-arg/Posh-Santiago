<#
.SYNOPSIS
    Generates a new GUID
.DESCRIPTION
    none
.EXAMPLE
    Get-GUID
#>

function Get-GUID {
  [guid]::NewGuid()
}
