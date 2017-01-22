#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xinput disable 'TPPS/2 IBM TrackPoint'
else
    rm $TOGGLE
    xinput enable 'TPPS/2 IBM TrackPoint'
fi
