:: Ensures any Chromium/Office run points to encrypted storage 
mklink /d "%LOCALAPPDATA%\Chromium\User Data" "x:\Chromium"
:: NOTE: Outlook 2013 fails to work with link
:: mklink /d "%LOCALAPPDATA%\Microsoft\Outlook" "x:\mail"
