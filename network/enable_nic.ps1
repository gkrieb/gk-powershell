# Run 'Get-NetAdapter' to find the name of the NIC you'd like to enable
$nic = "Ethernet"

Enable-NetAdapter -Name $nic -Confirm:$false