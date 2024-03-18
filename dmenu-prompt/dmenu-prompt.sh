#!/bin/bash
#
#script: gives a dmenu prompt $1 to do $2 
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

[ $(echo -e "no\nyes" | dmenu -i -p "$1") = "yes" ] && $2

