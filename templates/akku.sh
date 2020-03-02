#!/bin/bash
# © by L3D <l3d@c3woc.de>
# © MIT License -> https://github.com/roles-ansible/role_akku_warning/blob/master/LICENSE

power="$((`cat /sys/class/power_supply/BAT0/energy_now` * 100 / `cat /sys/class/power_supply/BAT0/energy_full_design`))"
charging="$(cat /sys/class/power_supply/BAT0/status)"

if [ $charging == 'Discharging' ]; then
  if (( $power < 25 && $power > 15 )); then
    zenity --warning --title="Low Power" --text="$power percent remaining.\n\nPlease recharge soon!" --display={{ akku_warning.display_address }}
  elif (( $power < 15 && $power > 9 )); then
    if (( RANDOM % 2 )); then zenity --warning --title="Low Power" --text="$power percent remaining.\n\nPlease recharge soon!" --display={{ akku_warning.display_address }}; else  pulsemixer --set-volume 95; mpv {{ akku_warning.sound_dest }} -fs --volume 130 --start 00:00:18 --vo=tct > /dev/null ; fi
  elif (( $power < 9 && $power > 5 )); then
    zenity --warning --title="Critical Power" --text="$power percent remaining.\n\nPlease recharge NOW!" --display={{ akku_warning.display_address }}
  elif (( $power < 5 )); then
    zenity --warning --title="Critical Power" --text="$power percent remaining.\n\nRECHARGE!\nNOW!" --display={{ akku_warning.display_address }}
  fi
fi
