# some omz plugins rely on these directories
export ZSH_CACHE_DIR="$HOME/.omz/cache"
mkdir -p "$ZSH_CACHE_DIR/completions"

# source custom zsh files
for f in $HOME/.zsh/*.zsh; do
  source "$f"
done

# source omz plugins
omz_plugins=(colorize gitfast kubectl minikube macos nvm poetry web-search z)
source "$HOME/.omz/lib/directories.zsh"
for p in $omz_plugins; do
  for f in "$HOME/.omz/plugins/$p"/*.plugin.zsh; do
    source "$f"
  done
done

# aliases
alias omzupdate='git -C "$HOME/.omz" pull origin master'
