#!/bin/sh

# terminate currently launched bars
killall -q polybar
sleep 1

for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar -r top &
	MONITOR=$m polybar -r bottom &
done

# launch bars
# polybar -r top &
# polybar -r bottom &

notify-send "bars launched"
