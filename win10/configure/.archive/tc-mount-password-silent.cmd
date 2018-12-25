:: silently mounts truecrypt volume with previously entered into environment variable PASSWORD
:: Example:
:: call get-password
:: call tc-mount-password-silent "c:\data.tc" "X"  
call truecrypt /volume %1 /letter %2 /auto /p %password% /silent /quit
