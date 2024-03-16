#!/bin/bash

NUMLOCK=$(xset q | grep LED | awk '{ print $10 }')
if [ "$NUMLOCK" = "00000002" ] || [ "$NUMLOCK" = "00000003" ]; then
    notify-send -t 2000 "numlock: on"
else
    notify-send -t 2000 "numlock: off"
fi
