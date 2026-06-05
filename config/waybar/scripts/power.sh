#!/usr/bin/env bash
choice=$(printf "Restart\nShutdown" | wofi --dmenu --conf ~/.config/waybar/scripts/power.conf)
case "$choice" in
    Restart) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
