source $HOME/.zshrc_extend

# Desktop-only extras are optional.
if [ -f "$HOME/.zshrc_desktop" ]; then
  source "$HOME/.zshrc_desktop"
fi
