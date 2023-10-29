#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config=$HOME/.config/polybar/config.ini -rq top &

echo "Polybar launched..."

