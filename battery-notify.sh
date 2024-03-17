#!/bin/bash
#
#script: notify me about percentage of battery (BAT1) 
#

BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                    #get battery percentage
STATUS=$(cat /sys/class/power_supply/BAT1/status)                                   #get battery status
while true; do
    if [ "$STATUS" = "Charging" ]; then
        true                                                                        #do nothig
    elif [ "$BAT" -le "15" ]; then                                                  #if battery less than 15%
        notify-send -u critical 'Warning!' "low battery"                            #notify me with urgency "critical"
    fi
    sleep 180                                                                       #check every 3 min
done 
