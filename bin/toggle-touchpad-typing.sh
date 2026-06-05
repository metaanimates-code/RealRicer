#!/bin/bash
current=$(hyprctl getoption input:touchpad:disable-while-typing -j 2>/dev/null | jq -r '.int')
if [ "$current" = "1" ]; then
    hyprctl keyword input:touchpad:disable-while-typing false
else
    hyprctl keyword input:touchpad:disable-while-typing true
fi
