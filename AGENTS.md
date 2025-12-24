# Repository Guidelines

## Project Structure & Module Organization
This repo is an Arch desktop dotfiles set. Common/CLI baseline mirrors `.dotfiles-wsl`; desktop-only files live here.

- Root files: `.zshrc`, `.zshrc_extend`, `.zshrc_desktop`, `.gitconfig`.
- Desktop configs: `.config/hypr/`, `.config/waybar/`, `.config/wlogout/`, `.config/kitty/`, `.config/spotifyd/`.
- Scripts: `.scripts/` (utility and wallpaper helpers).
- Documentation: `docs/` (inventory, setup links, verification, TODOs, future backlog, worklog).
- Legacy backups: `legacy/` (archived configs removed from active use).

## Build, Test, and Development Commands
No build system. Use `docs/VERIFY.md` for apply/verify.

- Dry-run apply (no changes):
  ```sh
  rsync -avhn --include '.config/***' --include '.scripts/***' --include '.zshrc*' --include '.gitconfig' --exclude '*' ./ "$HOME/"
  ```
- Apply to `$HOME`:
  ```sh
  rsync -avh --include '.config/***' --include '.scripts/***' --include '.zshrc*' --include '.gitconfig' --exclude '*' ./ "$HOME/"
  ```
- Syntax checks:
  ```sh
  bash -n .scripts/* .config/waybar/launch.sh
  zsh -n .zshrc .zshrc_extend .zshrc_desktop
  ```

## Coding Style & Naming Conventions
- Shell: prefer `#!/usr/bin/env bash` with `set -euo pipefail` in scripts.
- Indentation: 2 spaces in shell and config files unless upstream format differs.
- Naming: lowercase with underscores for scripts (e.g., `set_wallpaper`), config files follow tool defaults.

## Testing Guidelines
No automated test framework. Use the syntax checks above and manual desktop validation (Hyprland/Waybar/Wlogout launch).

## Commit & Pull Request Guidelines
- Commit messages use short imperative verbs (e.g., “Align shell baseline with WSL”). Keep commits small and reviewable.
- PRs should include: summary of changes, apply/verify steps run, and screenshots if UI changes (Waybar/Wlogout).

## Security & Configuration Tips
- Never commit secrets (keys, tokens). If retiring configs, move to `legacy/` and note it in `docs/WORKLOG.md`.
- Use official documentation links only in `docs/ARCH_SETUP.md`.

## System Context Report
Latest system snapshot and Vulkan notes live in `docs/INVENTORY.md` and `docs/WORKLOG.md`.
Current machine model: Samsung NP730QFG-KF1BR.

## Task Tracking
- Current tasks live in `docs/TODO.md`.
- Deferred/backlog items live in `docs/FUTURE.md`.
- Tool usage inventory lives in `docs/SYSTEM_TOOLS.md`.
