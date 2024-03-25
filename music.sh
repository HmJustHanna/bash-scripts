#!/bin/bash
#
# about: 
# usage: 
# author: Hanna Eudakimava (https://github.com/HmJustHanna/)
# 
# last modified: 25 Mar 2024
# sources:
#

declare -a playlist=(
"мальчик на девятке"
"Ленинград на Париж"
)

song=$(printf '%s\n' "${playlist[@]}" | dmenu -i -l 10 -p 'song name:')

if [ "$song" ]; then
    ytfzf -ma $song
else
    echo "exit" && exit 1
fi

