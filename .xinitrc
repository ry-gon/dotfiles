#!/bin/bash

xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Inertia" 30
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 1.2
xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9"


xset b off
xrdb ~/.Xresources
feh --bg-scale /home/rygon/Pictures/Wallpaper/spooky.jpg

while true; do
	xsetroot -name "$(./.dwmstatus)";
    sleep 1;
done &
start-pulseaudio-x11 &
exec dunst &
exec devmon --exec-on-label "LABEL" "/usr/bin/udevil %f" &
exec compton &
exec xfce4-power-manager &
alsactl --file ~/.config/alsa/asound.state restore &
exec dwm
