#!/bin/bash
echo "Regenerating FaceUnlock..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/random-stuff"

cd packages/apps/Settings
git am $CURRENT_DIR/settings-Port-face-unlock-feature.patch

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/base-Port-face-unlock-feature.patch

cd $ROOTDIR/vendor/revengeos
git am $CURRENT_DIR/vendor-revengeos-Include-faceunlock-config-if-available.patch

cd packages/apps/Settings
git am $CURRENT_DIR/settings-Add-moto-faceunlock-string.patch

cd $ROOTDIR/vendor/revengeui
git am $CURRENT_DIR/vendor-revengeui-Update-default-wallpaper.patch

cd $ROOTDIR
echo "Done"
