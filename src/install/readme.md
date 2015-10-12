

Approach to take for Windows post installation routines trying to:

- be splitted into severa tagged routines to be installed by different users, like 

`.NET developer` leads to installation of one set of tools,
`Power User` of other set, but share somthing with `.NET Developer`
Others like `User` 

Alternatively, filtered by tags installation may go, 
like `(security AND communication) or (development)`

Why:

- `.iso` images are hard for producing needed amout of combinations and cusomizations
- `.iso` already stale after creation
- most importatn that `.iso` should include are storage and networking drives to allow installations, and modern browser to search for receipts
- more and more software become open, so easy to combine and reuse
- post Windows installation and tuning allows for all needed scenarios starting from small OS core
- image 1 terrabyte `f:` drive with configs and installation which I attach and run


```
choco install `f:/install` `role:.NET developer or tags:(security AND communication)`
```

- thise allows integration with external sites for software tags and roles

TODO: 
- allow version dependance in config, e.g. if `virtualbox.extensionpack` should be same as `virtualbox` 
- chech how to path parameters into installtion out of config
- run for each installation custom post installation script
- set notepadplusplus default editor for everything double cmd
- find good sceen recorde, camstudio seems to contain crapware install, better to try to install portable versions
- autoinstall adb
- add to path c:\Users\<USER NAME>\AppData\Local\Android\android-sdk\platform-tools\adb.exe
- migrate all chocos into config and define logic/inheritance and composition rules for tags and roles, write script to filter out by these