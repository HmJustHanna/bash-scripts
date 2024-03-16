#!/bin/bash

while true; do
    if [ $BAT -le '20' ]; then                                                      #if battery less than 15%
        notify-send -u critical 'Warning!' "BAT: $BAT%"                             #notify me
    fi
    sleep 300                                                                       #check every 5 min
done 
