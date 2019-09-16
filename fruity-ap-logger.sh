#!/bin/bash

# By Nicholas Swiatecki, <nswiatec@cisco.com>

isScreenRunning=$( screen -list | grep -i AP | wc -l)

if [ $isScreenRunning -eq 1 ]
then
	echo "Screen running.. ignoring"
else
	screen -c ./screen.conf -dmSL 'AP' screen /dev/ttyUSB0
fi
