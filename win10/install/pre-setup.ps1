# install tools for remote access and installation, login via RDP as Administrator
# Run cmd as Admin and call this with powershell
# Or run powershell as admin

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# ssh client ans server packages
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

# allow to connect via windows remote manag,ent
Get-Service -Name 'WinRm' | Start-Service

# ssh service agent to allow connect externally to this pc
Get-Service -Name 'sshd' | Start-Service
