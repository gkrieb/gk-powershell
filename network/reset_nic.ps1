# Run 'Get-NetAdapter' to find the name of the NIC you'd like to reset
$nic = "Ethernet"

Disable-NetAdapter -Name $nic -Confirm:$false
Enable-NetAdapter -Name $nic -Confirm:$false
