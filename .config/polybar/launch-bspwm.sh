#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Terminate bspwm-node-msg instances
for p in $(pgrep -f bspwm-node-msg); do kill $p; done

# Wait until the processes have been shut down
while pgrep -f bspwm-node-msg >/dev/null; do sleep 1; done

# Launch bspwm-node-msg
$HOME/.config/polybar/bspwm-node-msg.sh &

# Launch Polybar, using default config location ~/.config/polybar/config
polybar main-bspwm &
polybar clock-bspwm &
