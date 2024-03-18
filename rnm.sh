#!/bin/bash
#
#script: rename ugly file names from net
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

#EXT=
ls|while read f
do
    while getopts 'hnu' OPTION; do
        case "$OPTION" in
            h)
                mv "$f" `echo "$f" | tr " ,[]()_" "-" | tr -d "'" | tr -s "-"`
                ;;
            n)
                mv "$f" `echo "$f" | tr " ,[]()-" "_" | tr -d "[:digit:]" | tr -s "_"`
                ;;
            u)
                mv "$f" `echo "$f" | tr " ,[]()-" "_" | tr -d "'" | tr -s "_"`
                ;;
            ?)
                echo "usage: $(basename "$0") -[n]umber -[u]nderscore" >&2
                exit 1
                ;;
        esac
    done
done
