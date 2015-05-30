# Creates environment variables for better Java programming 

$JAVA_HOME ="c:\Program Files\Java\jdk1.8.0\"
$ANT_HOME ="C:\OneDrive\exe\apache-ant-1.9.4\"

[Environment]::SetEnvironmentVariable("JAVA_HOME",$JAVA_HOME, "Machine")
[Environment]::SetEnvironmentVariable("ANT_HOME",$ANT_HOME, "Machine")



