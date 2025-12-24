# Archive

## 2025-12-23 - Desktop setup session

### System context
- Machine: Samsung NP730QFG-KF1BR (Arch Linux, Hyprland, Wayland).
- GPU: Intel Iris Xe (i915).
- Firmware: UEFI CA updated (2011 → 2023); no pending updates after reboot.

### Config changes
- Hyprland: fixed invalid options, set mainMod to SUPER, added external-first monitor auto-detect (`.scripts/set_monitors`) with hotplug watch, added blueman + pasystray autostart.
- Waybar/Kitty/Wlogout: updated fonts (Inter + Monaspice Nerd, emoji fallback), refreshed styling.
- Fontconfig: system-wide defaults in `/etc/fonts/local.conf` (Inter for sans, Monaspice for mono).

### Deployment
- Applied dotfiles to `$HOME` via rsync.

### Installed / removed
- Installed: waybar, wlogout, thunar, playerctl, pavucontrol-qt, pasystray, blueman, restic, power-profiles-daemon, thermald, font packs (Noto, Inter, Monaspace Nerd, JetBrainsMono Nerd, FiraCode Nerd, Symbols Nerd), fwupd, base man/pacman tools.
- AUR: mpvpaper, spotify, wlogout.
- Removed: helvum, pavucontrol (classic).

### Services
- Enabled and active: NetworkManager, bluetooth, fstrim.timer, systemd-timesyncd, power-profiles-daemon, thermald.

### Pending / follow-ups
- Audio tray applet (pasystray) visibility check; swap to volumeicon if needed.
- Final Hyprland monitor tuning (placement/refresh/scale).
- Vulkan device access issue (`/dev/dri/renderD128`) pending.
- Visual polish pass.
- Optional extras (power tuning, backups).
