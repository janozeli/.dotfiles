# FUTURE

## Post-install follow-ups
- Run shell syntax checks (`bash -n`, `zsh -n`).
- Confirm base packages are present (base-devel, git, man-db/man-pages, pacman-contrib, rsync).
- Power management fine-tune (optional; power-profiles-daemon already in use).
- Backups: choose tool and perform first backup (restic/borg).
- Optional: enable Flatpak if needed.

## Desktop/config decisions
- Decide whether to restore git-lfs filters in `.gitconfig` (desktop repo now matches WSL baseline).
- Confirm official source/docs for `zen-browser` used in Hyprland keybinds.
- Waybar media player module: `mediaplayer.py` is not in this repo; decide whether to add it and wire a `custom` module.
- Wallpaper rotation: `set_wallpaper` maintains a list, but `change_wallpaper` still picks a random file; decide if rotation should use the list strictly.
- Monitors: refine external-first layout and per-model tuning beyond the current auto-detect script.
- Verify audio tray applet (pasystray) visibility/behavior; swap to volumeicon if needed.
- Vulkan access issue (/dev/dri/renderD128) final diagnosis and fix.
