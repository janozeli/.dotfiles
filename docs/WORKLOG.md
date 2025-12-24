2025-12-23T19:42:58-03:00 - Start: update .dotfiles for Arch desktop; WSL is baseline for common/CLI.
2025-12-23T19:54:20-03:00 - Synced shell baseline from WSL; added optional desktop-only aliases file.
2025-12-23T19:54:20-03:00 - Synced git config and added editor baseline from WSL.
2025-12-23T19:54:20-03:00 - Hardened local scripts (bash + strict mode) and cleaned Waybar/Hyprland startup.
2025-12-23T19:54:20-03:00 - Reviewed .dotfiles-old; no additional utilities imported.
2025-12-23T20:05:44-03:00 - Reviewed Hyprland/Waybar/mpvpaper docs; aligned Waybar config name and mpvpaper options.
2025-12-23T20:16:10-03:00 - Removed editor config from desktop repo and moved it to legacy backup; updated aliases/docs.
2025-12-23T21:02:12-03:00 - Captured system context snapshot; Vulkan access pending.
2025-12-23T22:08:16-03:00 - Post-install: installed waybar/thunar/playerctl/pavucontrol/fwupd; AUR mpvpaper/spotify/wlogout; base man-db/man-pages/pacman-contrib; blueman + helvum; restic; fonts (Noto + emoji, JetBrainsMono Nerd, FiraCode Nerd, Symbols Nerd, Inter, Monaspace Nerd). Enabled power-profiles-daemon + thermald. Hyprland: fixed config errors, set mainMod SUPER, added monitor auto-detect script + watcher, blueman-applet autostart. Set system-wide fontconfig in /etc/fonts/local.conf and updated kitty/waybar/wlogout fonts. fwupd refresh shows Secure Boot KEK/db updates available.
2025-12-23T22:23:26-03:00 - Audio UI adjustments: removed helvum + pavucontrol, installed pavucontrol-qt + pasystray, and added pasystray autostart. Applets (blueman + pasystray) started via Hyprland exec to avoid dconf warnings.
2025-12-23T22:23:26-03:00 - Firmware update planned: Secure Boot KEK/db updates available; Secure Boot is disabled. Will run `fwupdmgr update` on AC power and reboot; remove TODO note after success.
2025-12-23T22:42:55-03:00 - Firmware update executed via `fwupdmgr update` (Secure Boot KEK/db). Reboot still required to complete.
2025-12-23T22:49:53-03:00 - Firmware update confirmed after reboot: UEFI CA updated (2011 → 2023); no pending updates.
2025-12-24T00:20:53-03:00 - Hyprland: configured keyboard layouts us(altgr-intl), us(intl), br(abnt2) with SUPER+Space toggle (grp:win_space_toggle); applied updated hyprland.conf to ~/.config and reloaded to clear invalid layout popup.

## System Context Report (2025-12-23)
Collected live from the current machine to aid setup and troubleshooting.

- OS: Arch Linux (rolling), kernel 6.18.2-arch2-1, timezone America/Sao_Paulo, NTP active.
- Hardware: Samsung 730QFG (convertible), board NP730QFG-KF1BR, BIOS P06VAE.440.251016.PL (2025-10-16).
- CPU: Intel Core i5-1335U (13th gen), 12 threads.
- GPU: Intel Iris Xe (Raptor Lake-P, i915).
- RAM/Swap: 15 GiB RAM, no swap.
- Storage: NVMe WDSN740 512 GB; / (ext4), /boot (vfat).
- Session: Wayland + Hyprland (hyprland-uwsm); TERM xterm-kitty.
- Audio: PipeWire 1.4.9 + WirePlumber; Intel cAVS; speakers + HDMI sinks; internal mics.
- Video: 1080p FHD camera (V4L2/libcamera).
- Input: Wacom stylus, Elan touch, Logitech G305, RK84 RGB keyboard, lid switch.
- Network: Intel Wi-Fi (iwlwifi), Bluetooth AX211; IPv4 + IPv6 active.
- Services (user): dbus, dunst, pipewire, wireplumber, xdg-portal (gtk/hyprland), nm-applet.
- Tools installed for diagnostics: usbutils (lsusb), mesa-utils (glxinfo).

### Pending Issue: Vulkan access blocked
- Symptom: `vulkaninfo --summary` fails with "Unable to open device /dev/dri/renderD128: Permission denied".
- Current state:
  - User is in groups `video` and `render`.
  - `/dev/dri/renderD128` is `0666` (root:render).
  - Python open on `/dev/dri/renderD128` fails with PermissionError.
  - `glxinfo -B` works and shows accelerated OpenGL with Mesa 25.3.2.
  - `vulkan-intel` and `vulkan-icd-loader` are installed.
  - Session is active on seat0 (Wayland).
- Suspected cause: device access restriction (systemd/seat policy or session scope) rather than file permissions.

Plan:
- Align common shell files (.zshrc, .zshrc_extend) with .dotfiles-wsl.
- Align common git config and scripts with .dotfiles-wsl.
- Bring over editor config from .dotfiles-wsl.
- Review .dotfiles-old for small, justified utilities; move retirements to legacy/.
- Verify desktop-specific configs (Hyprland/Waybar/Wlogout/Kitty/Spotifyd) and update docs.
- Finish documentation (README, ARCH_SETUP, VERIFY, TODO) and record verification steps.
