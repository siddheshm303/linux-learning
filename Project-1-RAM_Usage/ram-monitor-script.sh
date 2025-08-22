#!/bin/bash
#RAM Monitor Script


#Threshold percentage
TH=80

#Log File
LOGFILE=$(realpath log_ram_usage.log)

#Current time
DATE=$(date +"%Y-%m-%d %H:%M:%S")

#Get Memory Usage
TOTAL=$(free -m | awk '/Mem:/ {print $2}')
USED=$(free -m | awk '/Mem:/ {print $3}')
USAGE=$(( USED * 100 / TOTAL ))

#log function
log_message() {
	echo "$DATE | RAM Usage: $USAGE% (Used: ${USED}MB / Total: ${TOTAL}MB)" >> $LOGFILE
}

#Check usage and alert

if [ $USAGE -ge $TH ]; then
	log_message
	echo "ALERT: High RAM usage detected! ($USAGE%)"
	#TODO:send email
else
	log_message
	echo "RAM usage normal: $USAGE%"
fi


