<#
.SYNOPSIS
    Get AD user details
.DESCRIPTION
    Found domain based details for a given user.
.EXAMPLE
    Get-ADUserDetail -username $env:username
#>

function Get-ADUserDetail {
    param(
        [string]$username
    )
    $userdetails = & net user $username /domain
    $userdetails
}
