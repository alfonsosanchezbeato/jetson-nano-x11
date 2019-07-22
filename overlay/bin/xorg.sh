#!/bin/sh

export PATH=$SNAP/usr/sbin:$PATH

export SNAPPY_PRELOAD=$SNAP
export LD_PRELOAD="$SNAP/usr/lib/libsnappypreload.so"
exec "$SNAP/usr/lib/xorg/Xorg" -xkbdir $SNAP/usr/share/X11/xkb "$@"
