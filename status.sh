#!/bin/bash
while true; do
	#xsetroot -name "$(date)"
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)
	xsetroot -name "BAT: $BAT% $(date '+ %H:%M %a')"
	sleep 60
done&
