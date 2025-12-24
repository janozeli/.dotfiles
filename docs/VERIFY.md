# Verify

Note: apply steps require `rsync`.

## Dry-run apply (no changes)
```sh
rsync -avhn \
  --include '.config/***' \
  --include '.scripts/***' \
  --include '.zshrc*' \
  --include '.gitconfig' \
  --exclude '*' \
  ./ "$HOME/"
```

## Apply
```sh
rsync -avh \
  --include '.config/***' \
  --include '.scripts/***' \
  --include '.zshrc*' \
  --include '.gitconfig' \
  --exclude '*' \
  ./ "$HOME/"
```

## Script checks
```sh
bash -n .scripts/* .config/waybar/launch.sh
zsh -n .zshrc .zshrc_extend .zshrc_desktop
```

## Localization checks
Ensure `localectl status` matches the `input.kb_layout` and `kb_variant` values in `.config/hypr/hyprland.conf`.
```sh
localectl status
timedatectl status
```

## Optional checks
```sh
shellcheck -x .scripts/* .config/waybar/launch.sh
```
