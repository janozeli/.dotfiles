2025-12-23T19:42:58-03:00 - Start: update .dotfiles for Arch desktop; WSL is baseline for common/CLI.
2025-12-23T19:54:20-03:00 - Synced shell baseline from WSL; added optional desktop-only aliases file.
2025-12-23T19:54:20-03:00 - Synced git config and added editor baseline from WSL.
2025-12-23T19:54:20-03:00 - Hardened local scripts (bash + strict mode) and cleaned Waybar/Hyprland startup.
2025-12-23T19:54:20-03:00 - Reviewed .dotfiles-old; no additional utilities imported.
2025-12-23T20:05:44-03:00 - Reviewed Hyprland/Waybar/mpvpaper docs; aligned Waybar config name and mpvpaper options.
2025-12-23T20:16:10-03:00 - Removed editor config from desktop repo and moved it to legacy backup; updated aliases/docs.

Plan:
- Align common shell files (.zshrc, .zshrc_extend) with .dotfiles-wsl.
- Align common git config and scripts with .dotfiles-wsl.
- Bring over editor config from .dotfiles-wsl.
- Review .dotfiles-old for small, justified utilities; move retirements to legacy/.
- Verify desktop-specific configs (Hyprland/Waybar/Wlogout/Kitty/Spotifyd) and update docs.
- Finish documentation (README, ARCH_SETUP, VERIFY, TODO) and record verification steps.
