
param(
[string]$path
)

$ini = ConvertFrom-StringData((Get-Content $path -join "`n") 

return ($ini.GetEnumerator() | ForEach-Object { if($_.Value -eq "true") { "-$($_.Key)" } elseif ($_.Value -eq  "false") { "" } else {"-$($_.Key)=$($_.Value)" } }) -join " "