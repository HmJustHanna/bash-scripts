#!/bin/bash

# if(csc "$1.cs");then
# 	mono "$1.exe"
# fi

if(cc "$1.c" -o "$1");then
	./"$1"
fi
