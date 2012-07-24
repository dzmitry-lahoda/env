# creates url for sofware I use in windows
$shell = New-Object -ComObject WScript.Shell
$desktop = [System.Environment]::GetFolderPath('Desktop')
$Inspect = $shell.CreateShortcut("$desktop\Inspect.lnk")
$Inspect.TargetPath = "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\Inspect.exe"
$Inspect.Save()

$WinDbg32 = $shell.CreateShortcut("$desktop\WinDbg32.lnk")
$WinDbg32.TargetPath = "c:\Program Files (x86)\Debugging Tools for Windows (x86)\windbg.exe"
$WinDbg32.Save()
