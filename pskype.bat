:: Runs isolated portable skype. Should collocated with Skype executable.
:: Allows running several skypes. Stores data/settings in Skype.exe subfolder Data.
:: @Author Dzmitry Lahoda
@echo off
mdkir Data 
start skype.exe /secondary /removable /datapath:"Data"
exit