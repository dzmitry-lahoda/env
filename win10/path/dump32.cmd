:: Makes dumps of 32 bit processes into script directory while process in hang or crashing state
:: Example:
::   dump32 Excel.exe 
SET debugger="c:\Program Files (x86)\Windows Kits\8.0\Debuggers\x86\adplus"
%debugger% -hang -pn %1 -quiet -o %~dp0