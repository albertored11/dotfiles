#!/usr/bin/env bash

list_devices() {
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

    selected=$( ( for dev in "${devs[@]}"; do echo $dev; done; echo "Power off Bluetooth" ) | rofi -theme ~/.config/rofi/bluetooth/blurry_custom.rasi -dmenu -format d)

    [[ -z $selected ]] && exit 1

    selected=$((selected - 1))

    if [[ $selected -eq ${#macs[@]} ]]; then
        bluetoothctl -- power off
    else
        [[ ${cons[$selected]} == "yes" ]] && op="disconnect" || op="connect"

        bluetoothctl -- $op ${macs[$selected]}
    fi
}

powered="$(bluetoothctl -- show | grep "Powered" | cut -d ' ' -f2)"

if [[ "$powered" == "yes" ]]; then
    list_devices
else
    selected=$(echo "Power on Bluetooth" | rofi -theme ~/.config/rofi/bluetooth/blurry_custom.rasi -dmenu -format d)

    [[ -z $selected ]] && exit 1

    bluetoothctl -- power on
    
    list_devices
fi
