#!/bin/bash

cd $HOME/Media/videos
fzf | xargs mpv
