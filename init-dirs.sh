#!/usr/bin/env zsh

mkdir -p "$HOME/bin"
mkdir -p "$HOME/.config"
[ ! -e "$HOME/.config/starship.toml" ] && cp .config/starship.toml "$HOME/.config/starship.toml"

mkdir -p "$HOME/.vim/pack/tpope/start"
[ ! -e "$HOME/.vim/pack/tpope/start/vim-sensible" ] && git clone git@github.com:tpope/vim-sensible.git "$HOME/.vim/pack/tpope/start/vim-sensible"
