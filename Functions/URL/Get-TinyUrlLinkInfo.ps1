<#
.SYNOPSIS
    Tiny Url Fu
.DESCRIPTION
    Get tinyurl decryption for safety
.EXAMPLE
    NONE
#>

Function Get-TinyUrlLinkInfo {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true)]
        [string]$Url

    )

    Process {
        # Check link against GetLinkInfo.com.
        [void][Reflection.Assembly]::LoadWithPartialName("System.Web")
        $ConvertedUrl = [System.Web.HttpUtility]::UrlEncode($Url)
        Start-Process -FilePath "http://www.getlinkinfo.com/info?link=$ConvertedUrl&x=81&y=8"
        Write-Output $Url

    } # End Process.

} # End Function: Get-TinyUrlLinkInfo.
