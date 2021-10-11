#!/usr/bin/env bash

theme="blurry_custom"
dir="$HOME/.config/rofi/launchers/misc"

rofi -kb-cancel Escape,Super+Escape -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
