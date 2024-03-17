#!/bin/bash
#
#script: rename file names by removing spaces
#

#for tr

for f in *
do
    mv "$f" `echo "$f" | tr " []()_" "-" | tr -d "' " | tr -s "-"`;
done

#ls sed

#ls | while read file;
#do
#    mv "$file" "$(echo "$file" | sed -e 's/\ /-/g' 's/'//g')";
#done

