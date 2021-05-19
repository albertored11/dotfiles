#!/usr/bin/env bash

hwids=$(bspc query -N -n .hidden.local.window)
selected=$(for wid in $hwids; do xtitle $wid; done | rofi -theme ~/.config/rofi/bspwm-hidden/blurry_custom.rasi -dmenu -format d)

[[ -z $selected ]] && exit 1

wid=$(echo $hwids | cut -d ' ' -f$selected)

bspc node $wid -g hidden=off
bspc node -f $wid
