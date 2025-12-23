# Verify

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

## Optional checks
```sh
shellcheck -x .scripts/* .config/waybar/launch.sh
```
