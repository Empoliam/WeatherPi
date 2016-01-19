#/bin/sh

unparsed=cat /sys/bus/w1/devices/28-0000075c293f/w1_slave
data=$($unparsed | head -n 1 | tail -c 4)

if [ "$data" == "YES" ] 
	then
	echo Data received.
	echo $unparsed
else
	echo Read failure.
fi