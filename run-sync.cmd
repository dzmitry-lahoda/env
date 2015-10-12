:: starts up all possible user cloud storage clients
:: start "" %userprofile%\AppData\Local\Microsoft\OneDrive\OneDrive.exe /background 
::start ""  %userprofile%\AppData\Roaming\Dropbox\bin\Dropbox.exe /systemstartup
start "" "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe" /systemstartup
start "" "%ProgramFiles(x86)%\Google\Drive\googledrivesync.exe" /autostart
start "" %userprofile%\AppData\Roaming\Yandex\YandexDisk\YandexDisk.exe -autostart
start "" "%ProgramFiles(x86)%\Seafile\bin\seafile-applet.exe"

