# creates environment variables for sofware I use in windows
$paths ="c:\Program Files (x86)\Microsoft F#\v4.0\;c:\scripts;"
if (!$Env:Path.contains($paths)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $paths, "Machine")
  }
$Env:Path
$extensions =".fsx;"
$Env:PATHEXT = $Env:PATHEXT +";"+$extensions
