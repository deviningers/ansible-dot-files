#!/bin/bash

# Selects random wallpaper from folder, then glitches that wallpaper

files=($HOME/.config/wallpapers/*)
WALLPAPER=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`
TMPWALL=/tmp/screen*

wal -i "$WALLPAPER"

#another try to set wallpaper to glitched background
rm -f /tmp/screen*
convert $WALLPAPER /tmp/screen
convert /tmp/screen /tmp/screen.png
convert /tmp/screen.png -resize 1366x768^ -gravity center -extent 1366x768 /tmp/screen.png
corrupter /tmp/screen.png /tmp/screen.png
ls /tmp/screen.png

#set glitched wallpaper to lockscreen file
#rm -f $TMPWALL*
#convert $WALLPAPER -resize 1366x768^ -gravity center -extent 1366x768 $TMPWALL.png
#corrupter "$TMPWALL" "$TMPWALL"
#ls $TMPWALL
