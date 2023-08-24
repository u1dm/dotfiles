#!/bin/bash
current_state=$(pactl list sources | grep -A 10 '#53' | awk '/Mute/{print $2}')
if [ "$current_state" == "yes" ]; then
    echo "󰍭"
else
    echo "󰍬"
fi

