#!/bin/bash 
#
#script: get notification about your public ip
#usage: public-ip.sh
#author: ?
#

IP_MSG="$(curl --no-progress-meter http://ifconfig.io 2>&1)" 
STATUS=$? 

if [ $STATUS -ne 0 ]; then
    MESSAGE="Error Occurred! [ $IP_MSG ]" 
else
    MESSAGE="My Public IP: $IP_MSG" 
fi
notify-send -t 4000 "Public IP" "$MESSAGE"
echo $MESSAGE
