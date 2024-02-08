# Run 'Get-NetAdapter' to find the name of the NIC you'd like to disable
$nic = "Ethernet"

Disable-NetAdapter -Name $nic -Confirm:$false