#!/usr/bin/env bash

#TODO: Make its works

# Terminate already running bar instances
# pgrep polybar | xargs kill
# Best way 
kill -9 $(pgrep -f 'polybar') >/dev/null 2>&1

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch mybar

polybar -c ./config.ini My_polybar &
echo "Bars launched..."
