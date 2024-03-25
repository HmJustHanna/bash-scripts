#!/bin/bash
#
# about: fast check and remove "unnecessary packages"
# sources: https://bbs.archlinux.org/viewtopic.php?id=49088
# 
# last modified: 24 Mar 2024
#

for i in `sudo pacman -Qdt | awk '{print $1}'`; do sudo pacman -R $i ;  done

