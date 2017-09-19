<#
.SYNOPSIS
    Get process by MB RAM usage
.DESCRIPTION
    none
.EXAMPLE
    Get-ProcessByRam
#>
function Get-ProcessByRam {
  param(
      [string]$ProcessName = "*"
  )
  $start_time = Get-Date
  get-process -name $ProcessName |  Sort-Object WorkingSet64 -Descending |
  Group-Object -Property ProcessName |
  Format-Table Name, @{n='MB';e={'{0:N0}' -f (($_.Group|Measure-Object WorkingSet64 -Sum).Sum / 1MB)};a='right'} -AutoSize
  Write-Verbose "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
}
