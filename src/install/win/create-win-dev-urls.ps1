#TODO: port to F#

# Setups windows for more device automation 

get-item c:\WinDDK\*\Tools\devcon\amd64\devcon.exe | copy-Item -destination c:\Windows\System32\

# creates url for software for windows desktop development

$shell = New-Object -ComObject WScript.Shell
$desktop = [System.Environment]::GetFolderPath('Desktop')
$Inspect = $shell.CreateShortcut("$desktop\Inspect.lnk")
$Inspect.TargetPath = "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\Inspect.exe"
$Inspect.Save()

$WinDbg32 = $shell.CreateShortcut("$desktop\WinDbg32.lnk")
$WinDbg32.TargetPath = "c:\Program Files (x86)\Debugging Tools for Windows (x86)\windbg.exe"
$WinDbg32.Save()

$WinDbg64 = $shell.CreateShortcut("$desktop\WinDbg64.lnk")
$WinDbg64.TargetPath = "c:\Program Files\Debugging Tools for Windows\windbg.exe"
$WinDbg64.Save()


# Creates environment variables for better Windows scripting
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

$truecrypt = "C:\Program Files\TrueCrypt"
if (!$Env:Path.contains($truecrypt)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $truecrypt, "Machine")
}  

$chocoshim = "c:\ProgramData\chocolatey\bin"
if (!$Env:Path.contains($chocoshim)){ 
  [Environment]::SetEnvironmentVariable("PATH",$Env:Path + $chocoshim, "Machine")
}  
  
  

