#!/usr/bin/env zsh

mkdir -p "$HOME/bin"
mkdir -p "$HOME/.config"
[ ! -e "$HOME/.config/starship.toml" ] && cp .config/starship.toml "$HOME/.config/starship.toml"
