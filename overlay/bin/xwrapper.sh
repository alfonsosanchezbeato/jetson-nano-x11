#!/bin/sh

export PATH=$SNAP/usr/sbin:$PATH

ARCH=$(uname -m)
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SNAP/usr/lib/$ARCH-linux-gnu/tegra

DISPLAY=:0 exec "$@"
