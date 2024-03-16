#!/bin/bash

langs=`echo "c cpp lua" | tr ' ' '\n'`
utils=`echo "xargs awk sed" | tr ' ' '\n'`
selected=`printf "$langs\$nutils" | fzf`
echo "selected $selected"
curl cht.sh/$selected

