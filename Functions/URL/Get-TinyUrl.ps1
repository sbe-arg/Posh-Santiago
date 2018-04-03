<#
.SYNOPSIS
    Tiny Url
.DESCRIPTION
    Get tinyurl conversion
.EXAMPLE
    NONE
#>

Function Get-TinyUrl{

    [cmdletBinding()]
    Param(

        [parameter(ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true,Mandatory=$TRUE)]
        [String]$URL

     )

    $url = "http://tinyurl.com/api-create.php?url=$URL"
    $webclient = New-Object -TypeName System.Net.WebClient
    $TinyURL = $webclient.DownloadString($url)
    Write-Output $TinyURL

}
