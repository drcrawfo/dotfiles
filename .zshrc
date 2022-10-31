source /Users/dcrawford/.bootstrap_rc
export CLICOLOR=1
export TERM=xterm-256color

# Set prompt
export PS1="%F{cyan}%n%f@%F{green}%m%f:%~$ "

# do not autocomplete when ambiguous
setopt no_auto_menu
# save command timestamp and duration in history
setopt extended_history
# ignore dupes when searching history (CTRL+R)
setopt hist_find_no_dups
# do not save consecutive dups to history
setopt hist_ignore_dups
# append to history file as commands are entered
setopt inc_append_history

# preferred ls implementation
alias ls='ls -GFh'

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Handle Mac platforms
CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi