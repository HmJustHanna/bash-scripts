#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT1/capacity)
#sudo -u anna DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

if [ $BAT -eq '86' ]; then
    notify-send -w -u critical 'Warning!' 'BAT: 86%'
fi



