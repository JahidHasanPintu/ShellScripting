#!/bin/bash
# Script to play mp3 files.
# By Daniil Gentili

if [ "$1" = "--help" ]; then echo "Music player by Daniil Gentili.

Usage: `basename $0` [ Options ] file1 file2 ...
If called with no arguments you will be asked to select the file(s) to play.

Options:
--help:   Shows this extremely helpful message.
 "
 exit
fi

yatm='printf "\n####### Press q to skip the current track and Control-C to exit this program. ####### \n \n"; for f in $play; do echo $f | grep -q .mp3 && ft="$f" || ft="$f.mp3"; yatm "$ft";done'

if [ "$*" = "" ]; then
 while [ $e = ""]; do
  music=$(ls *.mp3 | cut -d'.' -f1)
  echo "What audio file(s) do you wish to play?
$music"
  read -p "Your selection(s): " play
  eval "$yatm"
 done
else play="$*"; eval $yatm;fi
