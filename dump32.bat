:: Makes dumps of 32 bit processes into script directory while process in hang or crashing state
:: Example:
::   dump32 Excel.exe 
"c:\SkyDrive\exe\Debugging Tools for Windows (x86)\adplus" -hang -pn %1 -quiet -o %~dp0