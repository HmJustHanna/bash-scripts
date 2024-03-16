#!/bin/bash

while true; do
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                #get battery percentage
    DOTS=$(cd $HOME/dotfiles && git status -s | wc -l)                              #git status for dotfiles
    SH=$(cd $HOME/.local/bin && git status -s | wc -l)                              #git status for dotfiles
    DWM=$(cd $HOME/suckless/dwm && git status -s | wc -l)                           #git status for dwm
    DM=$(cd $HOME/suckless/dmenu && git status -s | wc -l)                          #git status for dwm
    xsetroot -name "DOTS: $DOTS SH: $SH DWM: $DWM DM: $DM | BAT: $BAT% $(date '+ %H:%M')"   #show in dwm bar
    sleep 60                                                                        #update every min
done &
