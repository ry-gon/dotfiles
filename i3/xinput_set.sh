#!/bin/bash


#trackpad
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Accel Speed' -0.7
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Tapping Enabled' 1
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Middle Emulation Enabled' 1
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Horizontal Scroll Enabled' 0

#trackpoint
xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' -0.5

