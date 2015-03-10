:: installs free versions of Visual Studio and free extensions

choco install visualstudiocommunity2013 -params "AdminFile.xml"
choco install batch-install-vsix -params %~dp0\batch-install-vsix.extensions.xml -y