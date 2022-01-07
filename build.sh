#!/bin/sh
set -x
rm -rf ./build
meson build
ninja -C build
