#!/usr/bin/python

import re
import dbus
try:
    session_bus = dbus.SessionBus()
    spotify_bus = session_bus.get_object("org.mpris.MediaPlayer2.spotify",
                                         "/org/mpris/MediaPlayer2")
    spotify_properties = dbus.Interface(spotify_bus,
                                        "org.freedesktop.DBus.Properties")
    metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
except:
    print ('')

# The property Metadata behaves like a python dict
#for key, value in metadata.items():
#    print (key, value)

var = str(metadata['xesam:artist'])
m = re.search('dbus.String\(\'(.+?)\'\)', var)
if m:
    found = m.group(1)
    
print (found, "—", metadata['xesam:title'])

