<#
.SYNOPSIS
    Convert any hash array to string array
.DESCRIPTION
    Conver from hashtable to string
.EXAMPLE
    [hashtable]$myhashtable = @{ "1"="a"; "2"="b" ; "3"="c" }
    convert-HashToString -hash $myhashtable
#>

function Convert-HashToString {
param(
    [Parameter(Mandatory = $true)]
    [System.Collections.Hashtable]$Hash
)
    $nomorehash = $hash.GetEnumerator()
    $stringed = New-Object PSObject
    foreach ($h in $nomorehash){
        if($h.key){
            Write-Warning "Converting hash key: $($h.key) value: $($h.value) to string."
            Add-Member -InputObject $stringed -MemberType NoteProperty -Name $h.Key -Value $h.Value -ErrorAction SilentlyContinue -Force
        }
        elseif($h.name){
            Write-Warning "Converting hash key: $($h.name) value: $($h.value) to string."
            Add-Member -InputObject $stringed -MemberType NoteProperty -Name $h.Name -Value $h.Value -ErrorAction SilentlyContinue -Force
        }
    }
    return $stringed
}