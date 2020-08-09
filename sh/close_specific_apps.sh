#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

APPS=$(osascript -e 'tell application "System Events" to get name of (processes where background only is false)')

IFS=',' read -r -a myAppsArray <<< "$APPS"

for myApp in "${myAppsArray[@]}"
do
  appName=$(echo "$myApp" | sed 's/^ *//g')

   if [[ ! "$appName" == "Finder" && ! "$appName" == "alacritty" ]]; then
    osascript -e 'quit app "'"$appName"'"'
  fi
done