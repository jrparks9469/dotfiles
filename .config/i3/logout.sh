#!/bin/bash
#uses dmenu to confirm logout
x=$(echo -e "Logout\nShutdown\nRestart\nSuspend" | rofi -width -25 -lines 4 -location 1 -yoffset 20 -dmenu -p "Power:")
case "$x" in
    Shutdown) systemctl poweroff;;
    Restart) systemctl reboot;;
    Suspend) systemctl suspend;;
    Logout) i3-msg exit;;
esac
