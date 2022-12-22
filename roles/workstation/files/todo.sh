#!/bin/sh
#
# Write/remove a task to do later.
#
# Select an existing entry to remove it from the file, or type a new entry to
# add it.
#
# Probably modified from: http://tools.suckless.org/dmenu/scripts/


# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

# Create the alias.
#alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'


file="$HOME/.todo"
touch "$file"
height=$(wc -l "$file" | awk '{print $1}')
prompt="Add/delete a task: "

cmd=$(dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -l "$height" -p "$prompt" "$@" < "$file")
while [ -n "$cmd" ]; do
 	if grep -q "^$cmd\$" "$file"; then
		grep -v "^$cmd\$" "$file" > "$file.$$"
		mv "$file.$$" "$file"
        height=$(( height - 1 ))
 	else
		echo "$cmd" >> "$file"
		height=$(( height + 1 ))
 	fi

	cmd=$(dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -l "$height" -p "$prompt" "$@" < "$file")
done

exit 0
