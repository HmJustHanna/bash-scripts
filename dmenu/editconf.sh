#!/bin/bash
#
#

declare -a list=(
"bash - $HOME/.bashrc"
"dwm - $HOME/suckless/dwm/config.h"
"urxvt - $HOME/.Xresources"
"vim - $HOME/.vimrc"
"xinit - $HOME/.xinitrc"
)

selected=$(printf '%s\n' "${list[@]}" | dmenu -i -l 10 -p 'edit:')

if [ "$selected" ]; then
    config=$(printf '%s\n' "${selected}"| awk '{print $NF}')
    $EDITOR "$config"
else
    echo "exit" && exit 1
fi
