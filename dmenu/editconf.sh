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

choice=$(printf '%s\n' "${list[@]}" | dmenu -i -l 10 -p 'edit:')

if [ "$choice" ]; then
    config=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    urxvt -e vim "$config"
else
    echo "exit" && exit 1
fi
