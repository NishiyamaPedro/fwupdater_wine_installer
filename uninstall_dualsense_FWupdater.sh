#!/bin/bash

WINEPREFIX=~/.winefwupdater wine msiexec.exe /x {9505317F-5C12-489D-8C97-88511D9985B6} /qn 2>/dev/null
rm -rf ~/.winefwupdater
