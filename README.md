# jetson-nano-x11 snap

## Description

This repository contains a recipe to build a demo snap that leverages
the Jetson Nano GPU by running accelerated graphics and a CUDA
program. The snap is fully confined.

## Build

Run `snapcraft` in an arm64 device, or use a launchpad builder.

## Run

Install from a local file in a Jetson Nano device and connect the
interfaces, then run the X server with

```
snap install --dangerous jetson-nano-x11_0.1_arm64.snap 
snap connect jetson-nano-x11:x11-client jetson-nano-x11:x11-server
snap connect jetson-nano-x11:framebuffer
sudo jetson-nano-x11.xserver
```

NOTE: This needs https://github.com/snapcore/snapd/pull/7173 to run
properly. Check that the snapd version you are running contains this
change.
