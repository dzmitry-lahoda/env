# get IPs of all locally running VMs
Get-VM | Select-Object -ExpandProperty NetworkAdapters