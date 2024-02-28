#!/bin/bash

mkdir -p /home/anna/Pictures/scrot && scrot /home/anna/Pictures/scrot/'%d%m%Y-%H%M%S-$wx$h.png' --select --line mode=edge
