#!/usr/bin/env bash
set -euo pipefail

killall -r 'waybar*' || true

waybar -c "$HOME/.config/waybar/config.jsonc"
