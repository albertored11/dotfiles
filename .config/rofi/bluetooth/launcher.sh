#!/usr/bin/env bash

macs=()
cons=()
devs=()

while read line; do
    mac="$(echo $line | cut -d ' ' -f2)"
    macs+=("$mac")
    con="$(bluetoothctl -- info $mac | grep "Connected" | cut -d ' ' -f2)"
    cons+=("$con")
    [[ "$con" == "yes" ]] && prefix="[*] " || prefix=""
    devs+=("$prefix$(echo $line | cut -d ' ' -f3-)")
done <<<$(bluetoothctl -- paired-devices)

selected=$(for dev in "${devs[@]}"; do echo $dev; done | rofi -theme ~/.config/rofi/bluetooth/blurry_custom.rasi -dmenu -format d)

[[ -z $selected ]] && exit 1

selected=$((selected - 1))

[[ ${cons[$selected]} == "yes" ]] && op="disconnect" || op="connect"

echo $op

bluetoothctl -- $op ${macs[$selected]}
