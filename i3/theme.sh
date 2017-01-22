#!/usr/bin/env bash


case "$1" in
    default)
	line=$(head -n 1 config)
        mv config "$line"
	mv ./#default_theme config
	cd '~'

	line=$(head -n 1 .i3blocks.conf)
	mv .i3blocks.conf "$line.conf"
	mv ./#default_theme.conf .i3blocks.conf

	line=$(head -n 1 .Xresources)
	mv .Xresources "$line.Xresources"
	mv '!default_theme.Xresources' .Xresources

        ;;
    red)
        line=$(head -n 1 config)
        mv config "$line"
	mv ./#red_theme config
	cd '~'

	line=$(head -n 1 .i3blocks.conf)
	mv .i3blocks.conf "$line.conf"
	mv ./#red_theme.conf .i3blocks.conf

	line=$(head -n 1 .Xresources)
	mv .Xresources "$line.Xresources"
	mv '!red_theme.Xresources' .Xresources
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
        echo "Usage: $0 [default|suspend|hibernate|reboot|shutdown]"
        exit 2
esac

exit 0
