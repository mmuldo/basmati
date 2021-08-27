#!/bin/sh

[ $1 = "eDP-1" ] &&
    { edp1=$1; other=$2; } ||
    { edp1=$2; other=$1; }

xrandr --output $edp1 --primary --mode 1920x1080 --pos 1680x0 --rotate normal --output $other --mode 1680x1050 --pos 0x0 --rotate normal
# --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off --output DP-1-2 --off --output DP-1-3 --off
