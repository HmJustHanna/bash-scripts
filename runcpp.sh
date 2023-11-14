#!/bin/bash

if(g++ "$1.cpp" -o "$1");then
	./"$1"
fi
