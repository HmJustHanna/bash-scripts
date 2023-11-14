#!/bin/bash

if(csc "$1.cs");then
	mono "$1.exe"
fi
