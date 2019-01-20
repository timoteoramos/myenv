from libqtile import hook
from os import path
import subprocess

@hook.subscribe.startup_once
def autostart():
    home = path.expanduser('~')
    subprocess.call(['bash', '%s/.config/qtile/autostart.sh' % home])
