# Creates environment variables for better Windows scripting
# @Auhtor Dzmitry Lahoda
# TODO: refresh path after each update
# TODO: verify ; in start and end
#TODO: verify path exists
#TODO: spam about no path
#TODO: create according packages fro chocolatey which do these steps
$fsharp ="c:\Program Files (x86)\Microsoft SDKs\F#\3.1\Framework\v4.0;"
if (!$Env:Path.contains($fsharp)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $fsharp+";", "Machine")
  }

 $scripts = "w:\scripts"
if (!$Env:Path.contains($scripts)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $scripts+";", "Machine")
}  	

$winsdk = "c:\Program Files (x86)\Windows Kits\8.0\bin\x64"
if (!$Env:Path.contains($winsdk)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $winsdk, "Machine")
}  

$fsx =".fsx;"	
if (!$Env:PATHEXT.contains($fsx)){ 
        $Env:PATHEXT = $Env:PATHEXT +";"+$fsx
}  

$truecrypt = "c:\Program Files\trueCrypt"
if (!$Env:Path.contains($truecrypt)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $truecrypt, "Machine")
}  
  

