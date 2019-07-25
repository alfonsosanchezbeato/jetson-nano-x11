#!/bin/sh

cp -rf --preserve=mode $SNAP/etc/X11/xinit/xinitrc $SNAP_USER_DATA/.xinitrc
[ -e $SNAP_USER_DATA/.xsession ]	|| ln -s $SNAP_USER_DATA/.xinitrc $SNAP_USER_DATA/.xsession

OPENBOX_CONFIG=$SNAP_USER_DATA/.config/openbox
[ -e $OPENBOX_CONFIG ] 			|| mkdir -p $OPENBOX_CONFIG
cp -rf --preserve=mode $SNAP/openbox/environment $OPENBOX_CONFIG
cp -rf --preserve=mode $SNAP/openbox/autostart $OPENBOX_CONFIG

ARCH=$(uname --m)
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SNAP/usr/lib/$ARCH-linux-gnu/tegra

# A default client to run in X can be set before "--"
# To remove cursor, use -nocursor as argument to X
exec "$SNAP/usr/bin/startx" -- "$SNAP/usr/bin/X" "$@"
