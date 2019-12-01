#!/bin/sh
i3-sensible-terminal -e ranger $(cat /tmp/whereami ~/.i3/i3_ranger_dirs.txt | ~/.i3/i3_dmenu.sh) 
