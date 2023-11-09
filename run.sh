#!/bin/bash

if(cc "$1.c" -o "$1");then
	./"$1"
fi
