#!/bin/bash
echo "Regenerating FaceUnlock..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/random-stuff"

cd $ROOTDIR/packages/apps/Settings
git am $CURRENT_DIR/settings-Port-face-unlock-feature.patch

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/base-Port-face-unlock-feature.patch

cd $ROOTDIR/vendor/potato
git am $CURRENT_DIR/vendor-Include-faceunlock-config-if-available.patch

cd $ROOTDIR
echo "Done"
