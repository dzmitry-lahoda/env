:: !!Works correctly sometimes
:: Tries to call JVM application with specific version
:: Usage
:: run-with-java-home <JRE_HOME> <APP_BIN> <APP_NAME>
:: run-with-java-home "c:\Program Files (x86)\Java\jre7" "C:\Program Files (x86)\FreeMind\" "FreeMind.bat"
:: run-with-java-home "c:\Program Files (x86)\Java\jre7" "C:\Program Files (x86)\FreeMind\" "FreeMind.exe"
:: result of previous command would be running FreeMind with jre7
:: You can check via Process Hacker -> java.exe or javaw.exe-> 
:: Modules -> jvm.dll -> "C:\Program Files\Java\jre7\bin\server\jvm.dll"
:: Environment Variables -> JAVA_HOME -> "c:\Program Files (x86)\Java\jre7"
:: Notes
::   Tested on Windows 7 Enterpsise x64 with JRE1.8_25 and jre7

set JAVA_HOME="%~1"
:: replaces PATH=...;C:\ProgramData\Oracle\Java\javapath
set PATH="%~1\bin"
set currend_dir=%cd% 
cd "%~2"
call "%~2%~3"
cd %currend_dir%