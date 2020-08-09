#!/usr/bin/env sh
# -*- coding: utf-8 -*-
# =============================================================================
# Author: Will Grant
# =============================================================================

# Opens apps
osascript -e '
on sublime()
	tell application "Sublime Text"
		activate
		tell application "System Events" to tell process "Sublime Text"
			tell window 1
				set position to {5, 490}
				set size to {607, 530}
			end tell
		end tell
	end tell
end sublime

on safari()
	tell application "Safari"
		activate
		tell application "System Events" to tell process "Safari"
			tell window 1
				set position to {660, 110}
				set size to {1080, 840}
			end tell
		end tell
	end tell
	
end safari

sublime()
safari()
tell application "Safari"
    tell window 1
        set current tab to (make new tab with properties {URL:"http://www.google.com"})
    end tell
end tell




