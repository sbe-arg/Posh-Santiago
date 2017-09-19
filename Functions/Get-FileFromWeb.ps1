<#
.SYNOPSIS
    Download a file via powershell
.DESCRIPTION
    Default output location to user desktop
.EXAMPLE
    Get-FileFromWeb -FileUrl http://location/file.extension -SaveAs FileName -Location
#>

function Get-FileFromWeb {
  param(
      [Parameter(Mandatory=$true)]
      [string]$FileUrl,
      [string]$SaveAs,

      [string]$Location = $env:USERPROFILE + "\Desktop"
  )
  $start_time = Get-Date
  $fileextension = [System.IO.Path]::GetExtension("$FileUrl")
  $output = $Location + "\" + $SaveAs + $fileextension
  Write-Verbose "File saved in $output"
  Invoke-WebRequest -Uri $FileUrl -OutFile $output -Verbose
  Write-Verbose "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
}
