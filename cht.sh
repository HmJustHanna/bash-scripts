#!/bin/bash
#
#script: brief cheat sheet from command line fzf
#author: Anna Evdokimova (@HmJustHanna on github.com)        
#

langs=`echo "c bash" | tr ' ' '\n'`
utils=`echo "xargs awk sed" | tr ' ' '\n'`
selected=`printf "$langs\n$utils" | fzf`
echo "selected $selected"
curl cht.sh/$selected

