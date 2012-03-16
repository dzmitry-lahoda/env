# creates url for sofware I use in windows
$shell = New-Object -ComObject WScript.Shell
$desktop = [System.Environment]::GetFolderPath('Desktop')
$shortcut = $shell.CreateShortcut("$desktop\Inspect.lnk")
$shortcut.TargetPath = "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\Inspect.exe"
$shortcut.Save()