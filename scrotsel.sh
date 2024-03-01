#!/bin/bash

mkdir -p /home/anna/Media/Pictures/scrot && scrot /home/anna/Media/Pictures/scrot/'%d%m%Y-%H%M%S-$wx$h.png' --select --line mode=edge
