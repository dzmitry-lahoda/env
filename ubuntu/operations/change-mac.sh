# http://askubuntu.com/questions/390147/how-to-change-the-mac-address-of-pc
ifconfig enp0s25 down
ifconfig enp0s25 hw ether AA:FF:11:22:33:44
ifconfig enp0s25 up

