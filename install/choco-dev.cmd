:: install tools Dzmitry Lahoda uses for development as for current

:: windows
choco install sysinternals
choco install processhacker

:: git
choco install git -y
choco install tortoisegit  -y

:: TFS
choco install visualstudio2013teamexplorer  -y
:: http://stackoverflow.com/questions/12866832/whats-the-difference-between-git-tf-and-git-tfs
::choco install git-tf 
choco install gittfs  -y
set PATH=%PATH%;C:\tools\gittfs

:: Mercury
choco install tortoisehg  -y


:: .NET
choco install sharpdevelop  -y
choco install nugetpackageexplorer -y
choco install ilspy -y

:: HTTP
choco install fiddler4 -y





