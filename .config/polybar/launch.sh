#!/bin/sh

#terminate currently launched bars
killall -q polybar
sleep 1

displays.sh
sleep 1

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload bottom &
done

notify-send "polybars launched"
