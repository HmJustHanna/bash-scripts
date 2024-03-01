#!/bin/bash
while true; do
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)
    AUDIO=$(mocp -i | grep File | awk -F '/' '{print $NF}')
    xsetroot -name "NOW: $AUDIO BAT: $BAT% $(date '+ %H:%M %a') $(dwm -v)"
	sleep 60
done &
