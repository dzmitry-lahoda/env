:: Cleans network stack caches. Sometimes help with networking problems
:: @Author Dzmitry Lahoda
ipconfig /flushdns
netsh interface ip delete arpcache
ipconfig /renew