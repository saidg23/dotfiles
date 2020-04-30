#!/bin/sh

~/.fehbg &

sxhkd &

while true
do
    TEMPERATURE=" 🌡 $(/opt/vc/bin/vcgencmd measure_temp | sed 's/temp=//g')"
    DATE=" $(date +" %a %D %I:%M %p")";
    xsetroot -name "$TEMPERATURE$DATE";
    sleep 1;
done &
