#!/bin/bash
wget http://purnet.ir/purnet/apt.zip
unzip apt.zip

cd /data/data/com.termux/files/usr/etc/apt
mkdir  -p  trusted.gpg.d
cp -rn  ~/trusted.gpg.d/*  /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/
rm -f  -r apt.conf.d
mkdir apt.conf.d
rm -r preferences.d
mkdir preferences.d

rm -f  -r  sources.list.d
mkdir sources.list.d

cat > sources.list  << oef
deb https://mirrors.hit.edu.cn/termux/apt/termux-main stable main
oef

cat > sources.list.dpkg-dist  << oef

deb https://packages.termux.dev/apt/termux-main/ stable main
oef



cd /data/data/com.termux/files/usr/etc/apt/sources.list.d

cat > root.list << oef

deb https://mirrors.hit.edu.cn/termux/apt/termux-root root stable
oef


