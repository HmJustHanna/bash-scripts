#!/bin/bash
#
#

declare -a list=(
"dwm - $HOME/suckless/dwm/config.h"
"dmenu - $HOME/suckless/dmenu/config.h"
)

choice=$(printf '%s\n' "${list[@]}" | dmenu -i -l 10 -p 'edit:')

if [ "$choice" ]; then
    config=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    urxvt -e vim "$config" &
else
    echo "exit" && exit 1
fi
