set -o vi

path=(
  "/usr/local/opt/python/libexec/bin" # homebrew python executables
  "$HOME/bin"
  "$HOME/.local/bin"
  $path
)
export PATH

# enable colors in ls output
export CLICOLOR=1
# Customize ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# colorize plugin
export ZSH_COLORIZE_TOOL=pygmentize
export ZSH_COLORIZE_STYLE="dracula"
alias less="cless"

# save an unreasonably large amount of zsh history
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# fzf key bindings and fuzzy completion
source <(fzf --zsh)

# change title of diff2html page
alias prettydiff='diff2html -t "diff2html"'

# misc
alias clpbcopy='tr -d "\n" | pbcopy'
alias hg='history | grep'
alias kill-dock='killall Dock'
alias rand-uuid='python -c "import uuid; print(uuid.uuid4())"'
