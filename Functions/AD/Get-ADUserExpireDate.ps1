<#
.SYNOPSIS
    Find domain users password expirate date.
.DESCRIPTION
    Handy to find user password expiration time when you don't control AD. Show Warning by default on less than 1 week.
.EXAMPLE
    Get-ADUserExpireDate -user $env:username -span_days 14
#>

function Get-ADUserExpireDate {
    param(
        [string]$user,
        [int]$span_days = '8'
    )
    $u = Get-ADUserDetails -username $user
    $string = $u | Select-String -Pattern "Password expires *"
    $split = $string -split " "
    $expiredate = $split[14] + " " + $split[15] + " " + $split[16] + " "
    $currentdate = Get-Date
    $diference = New-TimeSpan –Start $currentdate –End $expiredate
    $difdays = $($diference.Days)

    if($difdays -lt $span_days){
        if($difdays -like "-*"){
            Write-Warning "$user password has expired on $expiredate wich was $difdays days from today."
        }
        else{
            Write-Warning "$user password is expiring on $expiredate wich is $difdays days from today."
        }
    }
    else{
        Write-Output "$user is fine."
    }
}
