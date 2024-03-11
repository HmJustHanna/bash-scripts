#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                #battery percentage

if [ $BAT -eq '94' ]; then
    notify-send -w 'Warning!' 'BAT: 94%'
else
    echo "..."
fi

