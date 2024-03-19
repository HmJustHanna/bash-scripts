#!/bin/bash

core="$HOME/Media/videos"
video=$(ls "$core" | dmenu -i -l 10 -p 'watch:')
if [ "$video" ]; then
    mpv "$core/$video"
else
    echo "exit" && exit 1
fi

