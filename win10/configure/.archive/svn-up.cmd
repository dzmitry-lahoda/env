:: Script which clean-up SVN directory after cancelled or stopped update and continues update process
:: Useful when working against slow server with interment connectivity failures
:: Usage
:: svnup C:/src/MyTrunk 7543


TortoiseProc.exe /command:cleanup /path:%1 /noui
TortoiseProc.exe /command:update /path:%1 /rev:%2