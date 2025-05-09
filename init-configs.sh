#!/usr/bin/env zsh

source "$(dirname "$0")/functions.zsh"

createdir "$HOME/bin"
for f in bin/*; do
  safecopy "$f" "$HOME/$f"
done

createdir "$HOME/.config"
safecopy .config/starship.toml "$HOME/.config/starship.toml"

safecopy .gitconfig "$HOME/.gitconfig"
safecopy .gitignore_global "$HOME/.gitignore_global"

safecopy .vimrc "$HOME/.vimrc"
createdir "$HOME/.vim/pack/tpope/start"
safeclone git@github.com:tpope/vim-sensible.git "$HOME/.vim/pack/tpope/start/vim-sensible"

createdir "$HOME/.ipython/profile_default"
safecopy .ipython/profile_default/ipython_config.py "$HOME/.ipython/profile_default/ipython_config.py"
