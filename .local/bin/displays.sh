#!/bin/sh

display_list=($(xrandr -q | grep ' connected' | cut -d' ' -f1))

[ ${#display_list[@]} -eq 2 ]

[ ${#display_list[@]} -eq 1 ] &&
    ~/.screenlayout/single.sh &&
    notify-send "using single monitor layout" &&
    exit 0

[ ${#display_list[@]} -eq 2 ] &&
    ~/.screenlayout/work-setup.sh ${display_list[@]} &&
    # DISPLAY=:8 xset -dpms s off &&
    notify-send "using dual monitor layout" &&
    exit 0

notify-send "no script for current layout" &&
    exit 1
