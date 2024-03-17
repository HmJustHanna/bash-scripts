#!/bin/bash
#
#script: notify me is numlock on/off when I press NumLock
#
#I bind XK_Num_Lock to execution of this script 
#And now Idk why, but without "sleep 0.1" notification is always "on" if I press numlock. 
#

sleep 0.1
NUMLOCK=$(xset q | grep LED | awk '{ print $10 }')                  #get string
if [ "$NUMLOCK" = "00000002" ] || [ "$NUMLOCK" = "00000003" ]; then #if numclock or numlock + capslock are on
    STATUS="numlock on"
else
    STATUS="numlock off"
fi
notify-send -t 2000 "$STATUS" -r 9923                               #notify me for 2 sec.
                                                                    #"-r" means "replace notification ID",
                                                                    #so previous notification will dissappear 
