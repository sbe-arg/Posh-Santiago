function Get-ADUserDetails {
    param(
        [string]$username
    )
    $userdetails = & net user $username /domain
    $userdetails
}

# $users = ("")

function Get-ADUserExpireDate {
    param(
        [string]$user,
        [string]$email
    )
    $u = Get-ADUserDetails -username $user
    $string = $u | Select-String -Pattern "Password expires *"
    $split = $string -split " "
    $expiredate = $split[14] + " " + $split[15] + " " + $split[16] + " "
    $currentdate = Get-Date
    $diference = New-TimeSpan –Start $currentdate –End $expiredate
    $difdays = $($diference.Days)

    if($difdays -lt 8){
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
#Get-ADUserExpireDate -users $users
