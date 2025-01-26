#!/usr/bin/env bash

AppName='tic80'
AppVersion='1.2.3003-dev'

#------------------------------------------------------------------------------#
# Prepare `AppDir` directory for packaging                                     #
#------------------------------------------------------------------------------#
rm -rf ./AppDir || true
mkdir -p ./AppDir/usr/bin
cp bin/tic80 ./AppDir/usr/bin
cp packaging/tic80.png ./AppDir

#------------------------------------------------------------------------------#
# Create an AppRun script                                                      #
#------------------------------------------------------------------------------#
linuxdeploy --appdir=./AppDir \
	--executable=bin/tic80 \
	--desktop-file=packaging/tic80.desktop \
	--icon-file=packaging/tic80.png \
	--output=appimage
