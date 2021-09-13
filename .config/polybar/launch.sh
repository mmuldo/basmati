#!/bin/sh

#terminate currently launched bars
killall -q polybar
sleep 1

~/.local/bin/displays.sh
sleep 1

for m in $(polybar --list-monitors | cut -d":" -f1); do
    bars="datetime health status tray workspaces"
    for bar in $bars; do
        MONITOR=$m polybar -c ~/.config/polybar/config -r $bar &
    done
done

notify-send "polybars launched"
