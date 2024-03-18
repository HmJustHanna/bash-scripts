#!/bin/bash
#
#script: gives a dmenu prompt to exit xorg
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

[ $(echo -e "no\nyes" | dmenu -i -p "Exit xorg?") = "yes" ] && pkill dwm

