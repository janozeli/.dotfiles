# TODO

## Post-install checklist (2025-12-23)
- Apply dotfiles: run rsync dry-run then apply.
- Run shell syntax checks (`bash -n`, `zsh -n`).
- Ensure base packages: base-devel, git, man-db, man-pages, pacman-contrib, rsync.
- Enable core services: NetworkManager, bluetooth, fstrim.timer, timesync/NTP.
- Power management: pick one (power-profiles-daemon or tlp) and validate.
- Firmware: ensure intel-ucode and fwupd are installed and updated.
- Fonts: Noto + emoji + Nerd Font if needed (Waybar/terminal glyphs).
- Backups: pick a tool (restic/borg) and do a first backup.
- Optional: set up AUR helper and/or Flatpak.
- Vulkan access: pending issue (see docs/INVENTORY.md).

- Decide whether to restore git-lfs filters in `.gitconfig` (desktop repo now matches WSL baseline).
- Confirm official source/docs for `zen-browser` used in Hyprland keybinds.
- Waybar media player module: `mediaplayer.py` is not in this repo; decide whether to add it and wire a `custom` module.
- Wallpaper rotation: `set_wallpaper` maintains a list, but `change_wallpaper` still picks a random file; decide if rotation should use the list strictly.
- Monitors: refine multi-monitor layout (external-first) and per-model tuning beyond the current auto-detect script.
- Audio: confirm tray applet (pasystray) is visible and behaving correctly; adjust if needed.
