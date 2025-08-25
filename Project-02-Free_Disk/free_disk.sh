#!/bin/bash

#Monitoring the free disk space

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "D" | awk '{print $5}' | tr -d %)

TO="siddheshm303@gmail.com"

if [[ $FU -ge 80 ]]
then
	echo "Disk Usage: $FU"
	echo "Warning disk space is low - $FU%" | mail -s "Disk Space Alert!" $TO
else
	echo "All good"
fi


