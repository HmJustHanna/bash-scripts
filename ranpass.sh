#!/bin/bash
#
#name: generate password of uppercase and lowercase letters and numbers
#
#synopsis: ranpass.sh NUMBER
#


NUM="$1"
head -3 /dev/urandom | tr -cd "[:print:]" | tr -cd "[:alnum:]" | cut -c 1-"$NUM"
