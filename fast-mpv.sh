#!/bin/bash

cd $HOME/Media/Videos
fzf | xargs mpv
