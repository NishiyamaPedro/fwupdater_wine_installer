#!/bin/bash

FWUPDATER_URL="https://fwupdater.dl.playstation.net/fwupdater/FWupdaterInstaller.exe"

mkdir dualsense-fwupdater

echo "Downloading FWupdaterInstaller.exe..."
curl -L "${FWUPDATER_URL}" -o dualsense-fwupdater/FWupdaterInstaller.exe

echo "Installing Firmware updater for DualSense wireless controller..."
WINEPREFIX=~/.winefwupdater wine dualsense-fwupdater/FWupdaterInstaller.exe /S /v/qn 2>/dev/null
WINEPREFIX=~/.winefwupdater wine reg add "HKLM\System\CurrentControlSet\Services\winebus" /v "Enable SDL" /t REG_DWORD /d 0 2>/dev/null

rm -rf dualsense-fwupdater
