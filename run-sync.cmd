:: starts up all possible user cloud storage clients
start ""  %userprofile%"\AppData\Roaming\Dropbox\bin\Dropbox.exe" /systemstartup
start "" %userprofile%"\AppData\Local\Microsoft\SkyDrive\SkyDrive.exe" /background 
start "" "C:\Program Files (x86)\Google\Drive\googledrivesync.exe" /autostart
start "" %userprofile%"\AppData\Roaming\Yandex\YandexDisk\YandexDiskStarter.exe" -desktop