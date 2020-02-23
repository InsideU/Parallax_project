#!/bin/bash 
echo "ENTERING INTO THE SCANNING MODE FOR DEAUTHENTICATION PACKET"

echo " "
echo "enter the network card interface in monitor mode"
read card
echo "Enter the filter mode for scanning purpose (example dns or deauth)"
read filter
echo "Scanning the wireless network on $card with filter $filter"
tshark -i $card   | grep "$filter"  

