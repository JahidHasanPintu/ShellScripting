#!/bin/bash
# Play random mp3 from home/pin2/Music

# Variables
echo "Random Music Player" 
echo "by Jahid Hasan Pintu"
echo "mocp -x STOP Music"
MUSICDIR="/home/pin2/Music"
SONGPATH=$(find "$MUSICDIR" -type f -name '*.mp3' | shuf -n1)
MOCP_STATUS=$(pgrep mocp)

randomsong () {
# Check if mocp is running. If not running, start mocp daemon
if [ -z "$MOCP_STATUS" ] && [ "$1" != "stop" ];
then
mocp -S
fi

# If argument "stop" is given, stop mocp daemon
if [ "$1" = "stop" ]
then mocp -x
fi

# Append random song to mocp playlist and start playing playlist
mocp -c -a -p "$SONGPATH" 2> /dev/null; }
echo "Playing ${SONGPATH//\/home\/pin2\/Music\/}"

randomsong "$@"
