#!/bin/bash

tar -czf package.tgz ./package/*
mkdir -p build/
mkdir -p conf/
rm -f build/baiduNetdisk.spk
tar -cvf build/baiduNetdisk.spk scripts/* INFO PACKAGE_ICON.PNG PACKAGE_ICON_256.PNG package.tgz conf/
rm -f package.tgz
