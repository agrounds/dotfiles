# dotfiles
Quickly get a new MacBook set up with my preferred tools and configurations.

## Runbook

Install the following manually:

1. iTerm
2. homebrew
3. sdkman
4. nvm

Then copy over configs and install/initialize stuff:

```zsh
cp .zshrc ~/.zshrc
./init-configs.sh
./install-omz.sh
brew bundle install
pnpm install -g diff2html-cli
./init-ipython.sh  # depends on uv and ipython
```

Finally, copy over any desired additional custom .zsh files, e.g.

```zsh
cp .zsh/c.zsh ~/.zsh
```
