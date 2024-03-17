#!/bin/bash
#
#script: rename ugly file names from net
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

#for tr

for f in *
do
    EXT=
    mv "$f" `echo "$f" | tr " []()_" "-" | tr -d "'" | tr -s "-"`;
done

#ls sed

#ls | while read file;
#do
#    mv "$file" "$(echo "$file" | sed -e 's/\ /-/g' 's/'//g')";
#done

