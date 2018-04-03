<#
.SYNOPSIS
    DecodeBase64
.DESCRIPTION
    none
.EXAMPLE
    Invoke-DecodeBase64
#>

function Invoke-DecodeBase64 {
  param(
    [string]$EncodedText
  )
  process{
    $Text = [System.Convert]::FromBase64String($EncodedText)
    $DecodedText= [System.Text.Encoding]::ascii.GetString($Text)
    $DecodedText
  }
}
