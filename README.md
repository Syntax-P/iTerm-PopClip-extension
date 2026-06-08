# Run in iTerm — PopClip Extension

A [PopClip](https://www.popclip.app) extension that sends selected text to [iTerm2](https://iterm2.com) as a terminal command, opening it in a new window automatically.

## What it does

Select any shell command, click the terminal icon in PopClip, and the extension will:

- Open a **new iTerm2 window** and run the command immediately
- If iTerm2 isn't already running, it launches it first, waits briefly for it to initialize, then runs the command

## Requirements

- [PopClip](https://www.popclip.app)
- [iTerm2](https://iterm2.com)

## Installation

1. Clone or download this repo
2. Rename the folder to `iTerm.popclipext` (must end in `.popclipext`)
3. Double-click the folder — PopClip will prompt you to install it

## Files

| File | Purpose |
|------|---------|
| `Config.yaml` | Extension metadata and action definition |
| `run.sh` | Shell script that opens iTerm2 and runs the command via AppleScript |

## How it works

PopClip sets the `$POPCLIP_TEXT` environment variable to whatever text you've selected. `run.sh` reads that and uses AppleScript to tell iTerm2 to open a new window and execute it:

The script checks whether iTerm2 is already running — if it is, a new window is created immediately. If not, it activates the app and waits `0.8s` before sending the command to give iTerm2 time to finish launching.

## License

MIT
