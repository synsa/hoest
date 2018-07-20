#!/bin/bash

#no screen saving
xset -dpms; xset s off
##set dpi before starting wm
#one monitor: xrandr --dpi 192
xrandr --output DP-1 --dpi 192 --output HDMI-1 --auto --rotate normal --scale 1x1 --right-of DP-1
#fix retarded pa again
#pulseaudio -k; pulseaudio --start
#map escape to caps
setxkbmap -option caps:escape
exec i3
#no screen saving
xset -dpms; xset s off
#start at server for browser script
sudo atd
