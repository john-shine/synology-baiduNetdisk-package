#!/bin/bash

pkg_version=$(cat VERSION)
cp INFO .INFO
echo -e "\nversion=\"${pkg_version}\"" >> INFO
tar -czf package.tgz --owner=0 --group=0 ./package/*
rm -rf build/
mkdir -p build/
mkdir -p conf/
tar -cvf "build/baiduNetdisk-${pkg_version}.spk" --owner=0 --group=0 scripts/* INFO PACKAGE_ICON.PNG PACKAGE_ICON_256.PNG package.tgz conf/
rm -f package.tgz
mv .INFO INFO
