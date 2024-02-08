# Run 'Get-NetAdapter' to find the name of the NIC you'd like to assign statically
$nic = 'Ethernet'
$ip = '192.168.1.51'
$netmask = 24
$gateway = '192.168.1.1'
$dns1 = '8.8.8.8'
$dns2 = '8.8.4.4'

New-NetIPAddress -InterfaceAlias $nic -IPAddress $ip -PrefixLength $netmask -DefaultGateway $gateway -Confirm:$false
Set-DnsClientServerAddress -InterfaceAlias $nic -ServerAddresses ($dns1,$dns2) -Confirm:$false