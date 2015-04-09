:: installs free versions of Visual Studio and free extensions

choco install visualstudiocommunity2013 -params "AdminFile.xml"
choco install batch-install-vsix -params %~dp0\batch-install-vsix.extensions.xml -y

:: TFS
choco install visualstudio2013teamexplorer  -y
:: http://stackoverflow.com/questions/12866832/whats-the-difference-between-git-tf-and-git-tfs
::choco install git-tf
choco install gittfs  -y
set PATH=%PATH%;C:\tools\gittfs
