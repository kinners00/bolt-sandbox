[CmdletBinding()]
Param(
 [Parameter(Mandatory)][string]$mytaskvar
 )

Write-Host "mytaskvar = $mytaskvar"