:: cleans network stack caches
ipconfig /flushdns
netsh interface ip delete arpcache
ipconfig /renew