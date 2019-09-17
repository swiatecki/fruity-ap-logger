#!/bin/bash

# By Nicholas Swiatecki, <nswiatec@cisco.com>

BASEDIR="/home/pi/fruity-AP-logger"

isScreenRunning=$( screen -list | grep -i AP | wc -l)

if [ $isScreenRunning -eq 1 ]
then
	echo "Screen running.. ignoring"
else
	screen -c $BASEDIR/screen.conf -dmSL 'AP' /dev/ttyUSB0
fi
