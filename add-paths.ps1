# creates url for sofware I use in windows
$paths ="c:\Program Files (x86)\Microsoft F#\v4.0\;"
$Env:Path = $Env:Path +";"+$paths
$extensions =".fsx;"
$Env:PATHEXT = $Env:PATHEXT +";"+$extensions
