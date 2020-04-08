#!/bin/bash

device="SteelSeries SteelSeries Rival 300 Gaming Mouse"
state=$(xinput list-props "$device" | grep "Device Enabled" | cut -f3)

if [ $state == 1 ]; then
    xinput --disable "$device"
    xinput --enable "$device"
else
    xinput --enable "$device"
fi
