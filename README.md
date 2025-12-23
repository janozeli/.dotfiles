# dotfiles (Arch desktop)

This repo is the Arch desktop layer. Common CLI configuration is aligned with `.dotfiles-wsl` and should stay in sync.

## Scope
- Common/CLI (from WSL baseline): `.zshrc`, `.zshrc_extend`, `.gitconfig`, `.scripts/gc`.
- Desktop-only: Hyprland/Wayland configs, Waybar/Wlogout, Kitty, Spotifyd, wallpaper scripts.

`.zshrc` loads `.zshrc_desktop` when present for desktop-only aliases.

## Apply
Use the commands in `docs/VERIFY.md` for a dry-run and apply. The current method is a targeted `rsync` into `$HOME` (requires `rsync`).

## Desktop vs WSL
- Desktop: apply everything.
- WSL: skip desktop-only files (Hyprland/Waybar/Wlogout/Kitty/Spotifyd and `.zshrc_desktop`).

## Revert
- Use git to roll back: `git checkout <branch>` or `git restore <file>` in this repo.
- Remove applied files from `$HOME` if you want to undo a local apply.

## Docs
- Inventory: `docs/INVENTORY.md`
- Arch setup notes and official links: `docs/ARCH_SETUP.md`
- Verification steps: `docs/VERIFY.md`
- TODOs and open decisions: `docs/TODO.md`
