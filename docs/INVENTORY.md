# Inventory

## Apply method detection (.dotfiles)
- No repo-level README/Makefile/install/bootstrap/chezmoi/stow files detected.
- Likely manual copy/symlink of files into $HOME (needs explicit docs).

## .dotfiles (desktop)
- Shell: `.zshrc`, `.zshrc_extend` (from WSL baseline), `.zshrc_desktop` (desktop-only aliases).
- Git: `.gitconfig`.
- Editor: `.config/nvim/*` (WSL baseline).
- Tmux: none.
- Terminal: `.config/kitty/kitty.conf`.
- Desktop/Wayland: `.config/hypr/hyprland.conf`, `.config/waybar/*`, `.config/wlogout/*`.
- Audio/streaming: `.config/spotifyd/spotifyd.conf`.
- Scripts: `.scripts/{change_wallpaper,set_wallpaper,gc,vd}`.
- Systemd user units: none detected.

## .dotfiles-wsl (common/CLI baseline)
- Shell: `.zshrc`, `.zshrc_extend`.
- Git: `.gitconfig`.
- Editor: `.config/nvim/*` (LazyVim-based config).
- Terminal: none.
- Scripts: `.scripts/gc`.
- Other: `.config/github-copilot/versions.json`.
- Systemd user units: none detected.

## .dotfiles-old (history)
- Shell: `.zshrc`, `.zshrc_extend`.
- Git: `.gitconfig`.
- Editor: `.config/nvim/*` (LazyVim-based config).
- Terminal: `.config/kitty/kitty.conf`.
- Desktop/X11: `.config/i3/config`, `.config/picom/picom.conf`, `.config/polybar/*`, `.config/rofi/*`.
- Audio/streaming: `.config/spotifyd/spotifyd.conf`.
- Scripts: `.scripts/{change_wallpaper,set_wallpaper,gc,vd}`.
- Systemd user units: none detected.
