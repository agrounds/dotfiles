#!/usr/bin/env zsh

mkdir -p "$HOME/bin"
mkdir -p "$HOME/.config"
[ ! -e "$HOME/.config/starship.toml" ] && cp .config/starship.toml "$HOME/.config/starship.toml"

[ ! -e "$HOME/.gitconfig" ] && cp .gitconfig "$HOME/.gitconfig"
[ ! -e "$HOME/.gitignore_global" ] && cp .gitignore_global "$HOME/.gitignore_global"

mkdir -p "$HOME/.vim/pack/tpope/start"
[ ! -e "$HOME/.vim/pack/tpope/start/vim-sensible" ] && git clone git@github.com:tpope/vim-sensible.git "$HOME/.vim/pack/tpope/start/vim-sensible"
