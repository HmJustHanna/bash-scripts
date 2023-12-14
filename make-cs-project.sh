#!/bin/bash

touch $1.cs
echo "using System;
namespace $1{
	class Program{
		static void Main(string[] args) {
			...
		}
	}
}
" > $1.cs
