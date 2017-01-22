#!/usr/bin/env bash


case "$1" in
    red)
	line=$(head -n 1 config)
        mv config 
	mv red_theme config
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend; exec i3lock -c 000000
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 [red|logout|suspend|hibernate|reboot|shutdown]"
        exit 2
esac

exit 0
