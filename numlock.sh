#!/bin/bash

sleep 0.1
NUMLOCK=$(xset q | grep LED | awk '{ print $10 }')
if [ "$NUMLOCK" = "00000002" ] || [ "$NUMLOCK" = "00000003" ]; then
    STATUS="numlock on"
else
    STATUS="numlock off"
fi
notify-send -t 2000 "$STATUS" -r 9923