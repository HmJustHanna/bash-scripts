#!/bin/bash
#
#script: notify me about percentage of battery (BAT1) 
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

while true; do
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                #get battery percentage
    STATUS=$(cat /sys/class/power_supply/BAT1/status)                               #get battery status
    if [ "$STATUS" = "Charging" ]; then
        true                                                                        #do nothig
    elif [ "$BAT" -le "15" ]; then                                                  #if battery less than 15%
        notify-send -u critical 'Warning!' "low battery"                            #notify me with urgency "critical"
    fi
    sleep 300                                                                       #check every 5 min
done 
