function Get-ADUserDetails {
    param(
        [string]$username
    )
    $userdetails = & net user $username /domain
    $userdetails
}
