#!/bin/bash
#uses dmenu to confirm logout
x=$(echo -e "Logout\nShutdown\nRestart" | rofi -font "Hack 10" -width -18 -lines 3 -location 1 -yoffset 20 -dmenu -p "Power Options: ")
case "$x" in
    Shutdown) systemctl poweroff;;
    Restart) systemctl reboot;;
    Logout) i3-msg exit;;
esac
