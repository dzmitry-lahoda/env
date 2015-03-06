:: installs free versions of Visual Studio and free extensions

choco install visualstudiocommunity2013
choco install batch-install-vsix -params "batch-install-vsix.extensions.xml" -force