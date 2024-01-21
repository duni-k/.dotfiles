#!/usr/bin/env sh
xrandr -q | grep " connected" | cut -d ' ' -f1 | head -n 1
