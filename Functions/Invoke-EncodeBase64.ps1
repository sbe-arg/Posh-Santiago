<#
.SYNOPSIS
    EncodeBase64
.DESCRIPTION
    none
.EXAMPLE
    Invoke-EncodeBase64
#>

function Invoke-EncodeBase64 {
  param(
    [string]$Text
  )
  process{
    $Bytes = [System.Text.Encoding]::ascii.GetBytes($Text)
    $EncodedText =[Convert]::ToBase64String($Bytes)
    $EncodedText
  }
}
