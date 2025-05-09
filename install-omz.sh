#!/usr/bin/env zsh

source "$(dirname "$0")/functions.zsh"

safeclone git@github.com:ohmyzsh/ohmyzsh.git "$HOME/.omz"

# some omz plugins rely on these directories existing
createdir "$HOME/.omz/cache/completions"

# custom zsh files
safecopy .omzconfig.zsh "$HOME/.omzconfig.zsh"
createdir "$HOME/.zsh"
echo "please manually copy any desired configurations from $(dirname "$0")/.zsh to $HOME/.zsh"
