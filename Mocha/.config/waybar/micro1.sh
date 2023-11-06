#!/bin/bash
current_state=$(pactl list sources | grep -A 10 '#53' | awk '/Mute/{print $2}')
if [ "$current_state" == "yes" ]; then
    pactl set-source-mute 53 0
else
    pactl set-source-mute 53 1
fi

