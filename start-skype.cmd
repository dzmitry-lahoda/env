:: Runs isolated portable skype. Allows running several skypes.

::TODO: allow running out of skype.exe directory
::TODO: if %~dp0/skype.exe exists then run from local folder

::NOTE: how to start Skype when path and arguments are with quotes without Skype.exe in PATH or CDing into Skype.exe without cmd.exe wait for Skype.exe close?
::NOTE: http://stackoverflow.com/questions/17674255/why-does-windows-start-command-not-work-with-spaces-in-arguments-and-path
set drive_path=%~dp0
set drive=%~d0
set skype="C:\Program Files (x86)\Skype\Phone\"
C:
cd %skype%
set data=%~1Data
mkdir %data%
start Skype.exe /secondary /removable /datapath:%data%
%drive%
cd %drive_path%
exit


