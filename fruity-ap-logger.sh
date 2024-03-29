#!/bin/bash

# By Nicholas Swiatecki, <nswiatec@cisco.com>

BASEDIR="/home/pi/fruity-ap-logger"

isScreenRunning=$( screen -list | grep -i AP | wc -l)

if [ $isScreenRunning -eq 1 ]
then
	echo "Screen running.. ignoring"
else
	echo "starting screen"
	/usr/bin/screen -c /home/pi/fruity-ap-logger/screen.conf -dmSL 'AP' /dev/ttyUSB0

	echo "screen started"
fi
