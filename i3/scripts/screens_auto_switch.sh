#!/usr/bin/env bash

if xrandr | grep -qE '^HDMI-A-0 connected 1920x1080' ; then
  notify-send "wide screen detected, let's disable the internal screen"
  xrandr --output eDP --off --output HDMI-A-0 --primary
  # polybar needs to be relauch after this
  sleep 5
  ~/.config/polybar/launch.sh
elif xrandr | grep -qE '^DP-0 connected' ; then
  notify-send "wide screen detected, let's disable the internal screen"
  xrandr --output eDP --off --output DP-0 --primary
  # polybar needs to be relauch after this
  sleep 5
  ~/.config/polybar/launch.sh
elif xrandr | grep -qE '^DP-1 connected' ; then
  notify-send "external screen detected, let's disable the internal screen"
  xrandr --output eDP --off --output DP-1 --primary
  # polybar needs to be relauch after this
  sleep 5
  ~/.config/polybar/launch.sh
else
  notify-send "External screen not detected, let's do nothing"
fi
