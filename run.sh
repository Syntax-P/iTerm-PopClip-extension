#!/bin/bash
COMMAND="$POPCLIP_TEXT"

osascript <<EOF
set isRunning to application "iTerm" is running

tell application "iTerm"
    if isRunning then
        set newWindow to (create window with default profile)
        tell current session of newWindow
            write text "$COMMAND"
        end tell
    else
        activate
        delay 0.8
        tell current session of current window
            write text "$COMMAND"
        end tell
    end if
    activate
end tell
EOF
