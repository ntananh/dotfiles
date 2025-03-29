#!/bin/sh

space_window_count=$(yabai -m query --windows --space | jq length)

if [ "$space_window_count" -eq 1 ]; then
    window_id=$(yabai -m query --windows --space | jq '.[0].id')
    yabai -m window --focus "$window_id"
fi
