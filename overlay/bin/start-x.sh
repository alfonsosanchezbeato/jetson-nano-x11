#!/bin/sh

cp -rf --preserve=mode $SNAP/etc/X11/xinit/xinitrc $SNAP_USER_DATA/.xinitrc
[ -e $SNAP_USER_DATA/.xsession ]	|| ln -s $SNAP_USER_DATA/.xinitrc $SNAP_USER_DATA/.xsession

OPENBOX_CONFIG=$SNAP_USER_DATA/.config/openbox
[ -e $OPENBOX_CONFIG ] 			|| mkdir -p $OPENBOX_CONFIG
cp -rf --preserve=mode $SNAP/openbox/environment $OPENBOX_CONFIG
cp -rf --preserve=mode $SNAP/openbox/autostart $OPENBOX_CONFIG

# use preload trick
export SNAPPY_PRELOAD=$SNAP
export LD_PRELOAD="$SNAP/usr/lib/libsnappypreload.so"
exec "$SNAP/usr/bin/startx" "--" "-nocursor" "$@"
