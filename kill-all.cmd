:: Terminates all processes by name. Helps when some process open to much of its duplicates in loop.
:: Usage:
::  kill-all conhost.exe
TASKKILL /F /IM %1 /T
