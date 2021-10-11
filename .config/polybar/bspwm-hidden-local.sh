#!/usr/bin/env bash

count=$(bspc query -N -n .hidden.local.window | wc -l) 
[[ $count == "0" ]] && echo || echo "[$count]"
