from libqtile.config import Screen
from libqtile import bar, widget

screens = [
    Screen(
        top=bar.Bar([
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Systray(),
                widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
            ], 24
        ),
    ),
]
