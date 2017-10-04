function Invoke-PostToSlack {
    param(
        [string]$url,
        [string]$text

    )
    process{
        $body = "{`"text`":`"$text - Sent from:$env:COMPUTERNAME-$env:USERNAME`"}"
        Invoke-RestMethod -Uri $url -Body $Body -Method Post
    }
}