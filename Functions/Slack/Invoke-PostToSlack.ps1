function Invoke-PostToSlack {
    param(
        [string]$url,
        [string]$text

    )
    process{
        $body = "{`"text`":`"$text - Sentfrom:$env:COMPUTERNAME-$env:USERNAME`"}"
        Invoke-RestMethod -Uri $url -Body $Body -Method Post
    }
}