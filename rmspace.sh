#!/bin/bash
#
#script: rename file names by removing spaces
#

#for tr

for i in *
do
    mv "$i" `echo "$i" | tr ' ' '-' | tr -d "' []()"`;
done

#ls sed

#ls | while read file;
#do
#    mv "$file" "$(echo "$file" | sed -e 's/\ /-/g' 's/'//g')";
#done

