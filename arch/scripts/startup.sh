#!/usr/bin/bash

## Set monitors
xrandr | grep -q HDMI2 && xrandr --output HDMI2 --primary --left-of eDP1
