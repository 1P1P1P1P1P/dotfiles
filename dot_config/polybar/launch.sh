#!/usr/bin/env sh

# terminate already running bar instances
killall -q polybar

# wait untill the processes have been shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; down

exec polybar --reload top
