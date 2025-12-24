# Inventory

## Apply method detection (.dotfiles)
- `README.md` documents an `rsync`-based apply flow (see `docs/VERIFY.md`).
- No automated install/bootstrap script detected.

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

## .dotfiles (desktop)
- Shell: `.zshrc`, `.zshrc_extend` (from WSL baseline), `.zshrc_desktop` (desktop-only aliases).
- Git: `.gitconfig`.
- Editor: none in desktop repo (archived in `legacy/editor-config.tar.gz`).
- Tmux: none.
- Terminal: `.config/kitty/kitty.conf`.
- Desktop/Wayland: `.config/hypr/hyprland.conf`, `.config/waybar/*` (config.jsonc), `.config/wlogout/*`.
- Audio/streaming: `.config/spotifyd/spotifyd.conf`.
- Scripts: `.scripts/{change_wallpaper,set_wallpaper,gc,vd}`.
- Systemd user units: none detected.
- Legacy: `legacy/editor-config.tar.gz` (removed per request; kept as backup).

## .dotfiles-wsl (common/CLI baseline)
- Shell: `.zshrc`, `.zshrc_extend`.
- Git: `.gitconfig`.
- Editor: present in WSL repo (not mirrored into desktop).
- Terminal: none.
- Scripts: `.scripts/gc`.
- Other: `.config/github-copilot/versions.json`.
- Systemd user units: none detected.

## .dotfiles-old (history)
- Shell: `.zshrc`, `.zshrc_extend`.
- Git: `.gitconfig`.
- Editor: present in old repo (not mirrored into desktop).
- Terminal: `.config/kitty/kitty.conf`.
- Desktop/X11: `.config/i3/config`, `.config/picom/picom.conf`, `.config/polybar/*`, `.config/rofi/*`.
- Audio/streaming: `.config/spotifyd/spotifyd.conf`.
- Scripts: `.scripts/{change_wallpaper,set_wallpaper,gc,vd}`.
- Systemd user units: none detected.
