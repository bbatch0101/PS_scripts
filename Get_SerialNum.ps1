#+++++++++++++++++++++++++++++++++++++++++++++++++
#
# Created By:  Brandon Batchelor
# Created:     6/27/19
# Filename:    Get_SerialNum.ps1
#+++++++++++++++++++++++++++++++++++++++++++++++++

# Get IP of the machine
$PValue = Read-Host "Enter in IP"

# Get SERIAL NUMBER of remote machine
Get-wmiobject -class win32_bios -computername $PValue | select SerialNumber
