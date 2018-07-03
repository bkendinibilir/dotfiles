#!/usr/bin/env sh

export MONITOR=$(xrandr -q|grep primary|awk {'print $1'})
SCREENS=$(xrandr -q|grep " connected"|wc -l)

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ $SCREENS -gt 1 ]; then
  polybar left &
  polybar right &
fi

polybar primary &

echo "Bars launched..."
