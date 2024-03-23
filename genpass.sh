#!/bin/bash
#
#about:     generate password of letters and numbers
#usage:     randpass.sh NUMBER
#author:    Anna Evdokimova (@HmJustHanna on github.com)
#

NUM="$1"
head -3 /dev/urandom | tr -cd "[:print:]" | tr -cd "[:alnum:]" | cut -c 1-"$NUM"
