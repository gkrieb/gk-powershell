# Run 'Get-NetAdapter' to find the name of the NIC you'd like to assign dynamically
$nic = 'Ethernet'

Set-NetIPInterface -InterfaceAlias $nic -Dhcp Enabled -Confirm:$false
Remove-NetRoute -InterfaceAlias $nic -Confirm:$false
Set-DnsClientServerAddress -InterfaceAlias $nic -ResetServerAddresses -Confirm:$false
ipconfig /renew

# Assuming DNS servers are assigned via Group Policy
gpupdate /force