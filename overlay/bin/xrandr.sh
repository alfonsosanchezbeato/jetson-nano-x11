#!/bin/sh

export PATH=$SNAP/usr/sbin:$PATH

export SNAPPY_PRELOAD=$SNAP
export LD_PRELOAD="$SNAP/usr/lib/libsnappypreload.so"
DISPLAY=:0 exec "$SNAP/usr/bin/xrandr" "$@"
