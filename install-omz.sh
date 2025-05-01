#!/usr/bin/env zsh

if [ ! -e "$HOME/.omz" ]; then
  git clone git@github.com:ohmyzsh/ohmyzsh.git "$HOME/.omz"
else
  echo "$HOME/.omz alrady exists, ignoring"
fi

# some omz plugins rely on these directories
mkdir -p "$HOME/.omz/cache/completions"

# custom zsh files
mkdir -p "$HOME/.zsh"
