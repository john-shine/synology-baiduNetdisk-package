#!/bin/bash

tar -czf package.tgz ./package/*
mkdir -p build/
rm -f build/baiduNetdisk.spk
tar -cvf build/baiduNetdisk.spk scripts/* INFO PACKAGE_ICON.PNG PACKAGE_ICON_256.PNG LICENSE package.tgz
rm -f package.tgz
