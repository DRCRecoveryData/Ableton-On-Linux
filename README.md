# Ableton On Linux

## Overview

This repository provides a bash script to install Ableton Live 11 Suite on Linux using Wine. It's part of the WOL (Windows-On-Linux) project, enabling users to run Windows applications seamlessly on Linux.

## Other Versions

If you're interested in other versions of Ableton, check out these repositories:

- [Ableton 11 Intro](https://github.com/Windows-On-Linux/AbletonIntro)
- [Ableton 11 Lite](https://github.com/Windows-On-Linux/AbletonLite)
- [Ableton 11 Standard](https://github.com/Windows-On-Linux/AbletonStandard)
- [Ableton 11 Live](https://github.com/Windows-On-Linux/Ableton-On-Linux)

## Tested VST Plugins

We've tested several VST plugins with Ableton on Linux. Here are some that worked:

- Toontrack Suite (including Superior Drummer, EZdrummer, EZkeys, and EZbass)
- FabFilter (Note: Add mfc42 via winetricks for proper functionality)
- Ample Sound Suite
- Waves (Note: Avoid installing drivers during setup; Wine-staging may be needed for proper central functionality; Consider installing PowerShell: [powershell-wrapper-for-wine](https://github.com/PietJankbal/powershell-wrapper-for-wine))
