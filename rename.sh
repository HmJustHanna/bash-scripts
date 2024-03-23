#!/bin/bash
#
#about:     rename unreadable file names from the net
#author:    Anna Evdokimova (https://github.com/HmJustHanna/)
#

#EXT=
for f in *
do
    mv "$f" `echo "$f" | tr " ,[]()_" "-" | tr -d "'" | tr -s "-"`
done

#    while getopts 'hnu' OPTION; do
#        case "$OPTION" in
#            h)
#                mv "$f" `echo "$f" | tr " ,[]()_" "-" | tr -d "'" | tr -s "-"`
#                ;;
#            n)
#                mv "$f" `echo "$f" | tr " ,[]()-" "_" | tr -d "[:digit:]" | tr -s "_"`
#                ;;
#            u)
#                mv "$f" `echo "$f" | tr " ,[]()-" "_" | tr -d "'" | tr -s "_"`
#                ;;
#            ?)
#                echo "usage: $(basename "$0") -[n]umber -[u]nderscore" >&2
#                exit 1
#                ;;
#        esac
#    done
