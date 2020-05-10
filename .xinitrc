#!/bin/sh

~/.fehbg &

compton -cfz -r 12 -l -15 -t -15 --fade-in-step=0.04 --fade-out-step=0.08 --inactive-dim=0.1 --refresh-rate 60 --backend glx --vsync opengl-oml &

sxhkd &

flameshot &

while true
do
    TEMPERATURE=" 🌡 $(/opt/vc/bin/vcgencmd measure_temp | sed 's/temp=//g')"
    PERIOD=$(printf $(date +"%p" | tr [:lower:] [:upper:]));
    DATE=" $(date +" %a %D %I:%M") ${PERIOD} ";
    xsetroot -name "${TEMPERATURE}${DATE}";
    sleep 4;
done &

exec dwm
