#!/bin/bash

# Define variables
wine_prefix="$HOME/wol/Ableton_Live_11_Suite"
ableton_exe="$wine_prefix/drive_c/ProgramData/Ableton/Live\ 11\ Suite/Program/Ableton\ Live\ 11\ Suite.exe"

# Launch Ableton Live 11 Suite
WINEARCH=win64 WINEPREFIX="$wine_prefix" wine "$ableton_exe"
