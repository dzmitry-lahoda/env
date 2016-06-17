:: Cleans network stack caches. Sometimes help with networking problems
:: TODO: prefix logs with script name and put logs in current dir
ipconfig /flushdns
netsh interface ip delete arpcache
ipconfig /release
ipconfig /renew

:: reset TCP/IP stack
netsh int ip reset c:\resetlog.txt   
:: reset winsock
netsh winsock reset c:\winsock.txt
:: reset IPv4 TCP/IP stack
netsh int ipv4 reset C:\reset.log