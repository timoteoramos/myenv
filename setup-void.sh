#!/bin/sh

echo "Setting up root configuration and essential packages"
mkdir -p /etc/X11/xorg.conf.d
cp rootconfig/20-kbdlayout.conf /etc/X11/xorg.conf.d/
cp rootconfig/environment /etc/environment
xbps-install qt5-styleplugins adwaita-icon-theme gnome-icon-theme gnome-icon-theme-extras gnome-icon-theme-symbol ConsoleKit2 mate-polkit xst slock xautolock xrandr xrdb curl base-devel vim-huge-python3 python3-Cython python3-devel python3-pip

echo "Powerline setup"
xbps-install -S font-hack-ttf socat python3-psutil python3-GitPython
pip3 install python-hglib pyuv powerline-status

