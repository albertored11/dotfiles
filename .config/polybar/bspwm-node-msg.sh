#!/usr/bin/env bash

bspc subscribe node_flag desktop_focus | while read; do
    polybar-msg hook bspwm-hidden-local 1 &>/dev/null
done
