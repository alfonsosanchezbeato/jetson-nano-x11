#!/bin/sh

export PATH=$SNAP/usr/sbin:$PATH

DISPLAY=:0 exec "$SNAP/usr/bin/xrandr" "$@"
