:: Runs isolated portable skype. Should colocated with Skype executable.
:: Allows running several skypes. Stores data in Skype.exe subfolder Data.
:: @Author Dzmitry Lahoda
@echo off
start skype.exe /secondary /removable /datapath:"Data"
exit