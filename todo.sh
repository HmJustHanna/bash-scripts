#!/bin/sh
#
#script: write/remove a task to do later.
#usage: select an existing entry to remove it from the file, or type a new entry to add it.
#author: http://tools.suckless.org/dmenu/scripts/
#


file="$HOME/Documents/todo.txt"
touch "$file"
height=$(wc -l "$file" | awk '{print $1}')
prompt="todo:"

cmd=$(dmenu -l "$height" -p "$prompt" "$@" < "$file")
while [ -n "$cmd" ]; do
 	if grep -q "^$cmd\$" "$file"; then
		grep -v "^$cmd\$" "$file" > "$file.$$"
		mv "$file.$$" "$file"
        height=$(( height - 1 ))
 	else
		echo "$cmd" >> "$file"
		height=$(( height + 1 ))
 	fi

	cmd=$(dmenu -l "$height" -p "$prompt" "$@" < "$file")
done

exit 0
