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
hibernate=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$suspend\n$hibernate\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		systemctl poweroff
	;;
    $reboot)
		systemctl reboot
	;;
    $suspend)
        $HOME/.local/bin/umount-alberpc && sleep 1
		$HOME/.local/bin/lock-screen &
        sleep 0.2
        systemctl suspend
    ;;
	$hibernate)
		$HOME/.local/bin/umount-alberpc && sleep 1
		systemctl hibernate
	;;
    $logout)
        bspc quit
    ;;
esac
