#!/bin/sh

echo "Setting up root configuration and essential packages"
mkdir -p /etc/X11/xorg.conf.d
cp rootconfig/20-kbdlayout.conf /etc/X11/xorg.conf.d/
cp rootconfig/environment /etc/environment
xbps-install -S xorg-minimal xorg-fonts xrandr qt5-styleplugins adwaita-icon-theme gnome-icon-theme gnome-icon-theme-extras gnome-icon-theme-symbolic ConsoleKit2 mate-polkit curl wget vim-huge-python3
[ ! -L /var/service/dbus ] && ln -s /etc/sv/dbus /var/service/

echo "Development tools"
xbps-install -S git subversion bzr mercurial cvs base-devel python3-Cython python3-devel python3-pip editorconfig

echo "Powerline setup"
xbps-install -S font-hack-ttf socat python3-psutil python3-GitPython
pip3 install python-hglib pyuv powerline-status

echo "Qtile + other stuff"
xbps-install -S libxcb-devel libffi-devel cairo-devel python3-dbus python3-xdg python3-mpd2 python3-iwlib python3-keyring xst dunst dmenu scrot rofi slock xautolock xrdb
pip3 install xcffib
pip3 install cairocffi
pip3 install qtile

echo "GTK themes"
xbps-install -S greybird-themes papirus-icon-theme

echo "GStreamer plugins"
xbps-install -S gst-libav gst-omx gst-plugins-bad1 gst-plugins-good1 gst-plugins-ugly1 gstreamer-vaapi
