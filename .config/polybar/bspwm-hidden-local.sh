#!/usr/bin/env bash

count=$(bspc query -N -n .hidden.local.window | wc -l) 
[[ $count == "0" ]] && echo || echo "[$count]"

#while true; do
#    count=$(bspc query -N -n .hidden.local.window | wc -l)
#    [[ $count == "0" ]] && echo || echo "[$count]"
#    sleep 0.2
#done
