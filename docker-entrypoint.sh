#!/bin/bash

echo $SAVEFILE

if [[ -z $SAVEFILE ]]; then
  /OpenRCT2/openrct2-cli set-rct2 /orct2/Minimum
  /OpenRCT2/openrct2-cli host $SAVEFILE --headless
else
  echo "Please set SAVEFILE environment variable to SC6 file"
  exit 1
fi

