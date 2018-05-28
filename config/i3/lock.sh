#!/bin/bash

TMPBG=$HOME/screenshot.png
LOCK=$HOME/.config/i3/lock.png

RES_ALL=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
RES_eDP1x=$(xrandr | grep 'eDP1' | sed -E 's/eDP1 connected[^0-9]*([0-9]+)x([0-9]+).*/\1/')
RES_eDP1y=$(xrandr | grep 'eDP1' | sed -E 's/eDP1 connected[^0-9]*([0-9]+)x([0-9]+).*/\2/')

if xrandr -q | grep "DP2 disconnected"; then
  ffmpeg -f x11grab -video_size $RES_ALL -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=8:4,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet
else
  ffmpeg -f x11grab -video_size $RES_ALL -y -i $DISPLAY -i $LOCK -i $LOCK -filter_complex "boxblur=8:4,overlay=($RES_eDP1x-overlay_w)/2:($RES_eDP1y-overlay_h)/2,overlay=(main_w-overlay_w+$RES_eDP1x)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet
fi

i3lock -i $TMPBG

rm $TMPBG
