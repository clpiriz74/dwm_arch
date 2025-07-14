#!/bin/bash
FONT="JetBrainsMono Nerd Font:size=12"

options="Logout\nSuspend\nReboot\nShutdown\nCancel"

choice=$(echo -e $options | dmenu -i -fn "$FONT" -p "Power Menu:")

case $choice in
    Logout)
        killall dwm
        ;;
    Suspend)
        systemctl suspend
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Cancel)
        exit 0
        ;;
esac
