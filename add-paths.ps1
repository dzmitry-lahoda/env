# creates environment variables for sofware programmer Dzmitry Lahoda use in Windows
$paths ="c:\Program Files (x86)\Microsoft F#\v4.0\;c:\scripts;"
if (!$Env:Path.contains($paths)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $paths, "Machine")
  }

$winsdk = "c:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin\"
if (!$Env:Path.contains($winsdk)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $winsdk, "Machine")
  }  
$Env:Path
$extensions =".fsx;"
$Env:PATHEXT = $Env:PATHEXT +";"+$extensions
