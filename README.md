# dotfiles
Quickly get a new MacBook set up with my preferred tools and configurations.

## Runbook

Install the following manually:

1. iTerm
2. homebrew
3. sdkman
4. nvm

Follow the post-install instructions for homebrew. Then copy over configs and
install/initialize stuff:

```zsh
cp .zshrc ~/.zshrc
./init-configs.sh
./install-omz.sh
brew bundle install
# install a version of node so we can use pnpm
nvm install --lts
pnpm install -g diff2html-cli
```

Next, copy over any desired additional custom .zsh files, e.g.

```zsh
cp .zsh/c.zsh ~/.zsh
```

## IPython setup

The `init-configs.sh` script installs an `ipython` wrapper script which invokes
`ipython` using a `uv`-managed project at `$HOME/pyenvs/notebooks`. To make use
of it, manually `uv init` this project and `uv add ipython` to it. Then,
whenever you need a dependency in your `ipython` sessions, you can just add it
to the `notebooks` project and it'll be available in all future sessions.

### Colors

To fix the horrible default `ipython` colors, take a look at
[this guide](https://wiki.groundsfam.com/programming/python/ipython-colors-and-other-configuration).
