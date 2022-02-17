#!/usr/bin/env bash

theme="blurry_custom"
dir="$HOME/.config/rofi/powermenu"

rofi_command="rofi -theme $dir/$theme"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		systemctl poweroff
	;;
    $reboot)
		systemctl reboot
	;;
    $suspend)
        $HOME/.local/bin/lock-screen &
        sleep 0.4
        systemctl suspend
    ;;
    $logout)
        bspc quit
    ;;
esac
