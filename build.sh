#!/bin/sh
set -x
rm -rf ./build
#meson build -Dgallium-drivers=iris -Dvulkan-drivers=intel -Dvulkan-drivers=intel
#meson build -Dgallium-drivers=iris -Dvulkan-drivers=intel -Dvulkan-drivers=intel -Dbuildtype=debug -Dgallium-rusticl=true -Dllvm=enabled 
RUSTC=clippy-driver meson build -Dgallium-drivers=iris -Dvulkan-drivers=intel -Dvulkan-drivers=intel -Dbuildtype=debug -Dgallium-rusticl=true -Dllvm=enabled -Drust_std=202
ninja -C build
