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
        $HOME/.local/bin/umount-alberpi && sleep 1
        lock-screen --off --suspend
    ;;
	$hibernate)
		$HOME/.local/bin/umount-alberpi && sleep 1
		systemctl hibernate
	;;
    $logout)
        bspc quit
    ;;
esac
