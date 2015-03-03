:: install tools Dzmitry Lahoda uses for development as for current

:: git
choco install git

:: TFS
choco install visualstudio2013teamexplorer
:: http://stackoverflow.com/questions/12866832/whats-the-difference-between-git-tf-and-git-tfs
::choco install git-tf 
choco install gittfs
set PATH=%PATH%;C:\tools\gittfs

:: Mercury
choco install tortoisehg
choco install tortoisegit

:: .NET
choco install sharpdevelop
choco install nugetpackageexplorer
choco install ilspy

:: HTTP
choco install fiddler4

:: Virtualization
choco install virtualbox

