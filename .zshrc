export CLICOLOR=1
export TERM=xterm-256color

# Set prompt
export PS1="%F{cyan}%n%f@%F{green}%m%f:%~$ "

# do not autocomplete when ambiguous
setopt no_auto_menu
# save command timestamp and duration in history
setopt extended_history

# preferred ls implementation
alias ls='ls -GFh'

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
