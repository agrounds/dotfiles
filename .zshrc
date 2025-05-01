autoload -Uz compinit
compinit

# enable menu select tab completion
zstyle ':completion:*' menu select

# enable colors in ls output
export CLICOLOR=1

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

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

# starship.rs
eval "$(starship init zsh)"

# zsh autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
