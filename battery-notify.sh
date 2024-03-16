#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                    #get battery percentage
STATUS=$(cat /sys/class/power_supply/BAT1/status)                                   #get battery status
while true; do
    if [STATUS -e 'Charging']; then                                                 #do nothig
    elseif [ $BAT -le '15' ]; then                                                  #if battery less than 15%
        notify-send -u critical 'Warning!' "low battery"                            #notify me
    fi
    sleep 300                                                                       #check every 5 min
done 
