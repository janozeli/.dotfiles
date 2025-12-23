# Inventory

## Apply method detection (.dotfiles)
- `README.md` documents an `rsync`-based apply flow (see `docs/VERIFY.md`).
- No automated install/bootstrap script detected.

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
