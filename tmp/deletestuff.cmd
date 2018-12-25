:: deletes many small files fast
:: http://stackoverflow.com/a/6208144/173073
del /f/s/q %1 > nul
rmdir /s/q %1