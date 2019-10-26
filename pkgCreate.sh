#!/bin/bash

pkg_version=$(cat VERSION)
cp INFO .INFO
echo -e "\nversion=\"${pkg_version}\"" >> INFO
tar -czf package.tgz ./package/*
mkdir -p build/
mkdir -p conf/
rm -f build/baiduNetdisk.spk
tar -cvf "build/baiduNetdisk-${pkg_version}.spk" scripts/* INFO PACKAGE_ICON.PNG PACKAGE_ICON_256.PNG package.tgz conf/
rm -f package.tgz
mv .INFO INFO
