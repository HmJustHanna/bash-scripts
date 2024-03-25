#!/bin/bash
#
# about: 
# usage: 
# author: Hanna Eudakimava (https://github.com/HmJustHanna/)
# 
# last modified: 24 Mar 2024
# sources:
#

INFO=$(transmission-remote -l | awk '{ print $2 }')
notify-send -t 2000 "transmission" "$INFO"

