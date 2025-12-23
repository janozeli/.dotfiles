2025-12-23T19:42:58-03:00 - Start: update .dotfiles for Arch desktop; WSL is baseline for common/CLI.

Plan:
- Align common shell files (.zshrc, .zshrc_extend) with .dotfiles-wsl.
- Align common git config and scripts with .dotfiles-wsl.
- Bring over editor config (nvim) from .dotfiles-wsl.
- Review .dotfiles-old for small, justified utilities; move retirements to legacy/.
- Verify desktop-specific configs (Hyprland/Waybar/Wlogout/Kitty/Spotifyd) and update docs.
- Finish documentation (README, ARCH_SETUP, VERIFY, TODO) and record verification steps.
