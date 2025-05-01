# Plugin settings
# These must be set before plugins are loaded, hence they're stored here
zstyle ':omz:plugins:nvm' lazy yes            # instruct nvm plugin to lazy-load nvm itself
zstyle ':omz:plugins:nvm' lazy-cmd diff2html  # add extra commands to trigger loading of nvm

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
