:: start up script when Dzmitry Lahoda mounts his file system
call get-password
call tc-mount-password-silent "i:\!private.tc" "X"  
call tc-mount-password-silent "i:\!customers.tc" "V"
