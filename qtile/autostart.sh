#!/bin/bash
/usr/bin/xrdb ~/.Xresources
/usr/libexec/polkit-mate-authentication-agent-1 &
/usr/bin/xautolock -time 5 -locker /usr/bin/slock -nowlocker /usr/bin/slock &
