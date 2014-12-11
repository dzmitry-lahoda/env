:: start up script when Dzmitry Lahoda mounts his file system
call getpsw
call truecrypt /volume "i:\!private.tc" /letter "X" /auto /p %password% /silent /quit
call truecrypt /volume "i:\!epam.tc" /letter "V" /auto /p %password% /silent /quit
