#!/bin/sh

export PATH=$SNAP/usr/sbin:$PATH

exec "$SNAP/usr/lib/xorg/Xorg" -xkbdir $SNAP/usr/share/X11/xkb "$@"
