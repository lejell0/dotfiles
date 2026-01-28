#!/bin/bash

WALL_DIR="$HOME/Pictures/walls"

SELECTED=$(ls "$WALL_DIR" | fuzzel -d -p "󰸉 Wallpapers: " --width 40 --lines 10)

if [ -n "$SELECTED" ]; then
    swww img "$WALL_DIR/$SELECTED" \
        --transition-type grow \
        --transition-pos 0.9,0.9 \
        --transition-step 90 \
        --transition-fps 60

    notify-send "Wallpaper changé" "$SELECTED" -i "$WALL_DIR/$SELECTED"
fi
