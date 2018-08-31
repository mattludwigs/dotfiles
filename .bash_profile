export ERL_AFLAGS="-kernel shell_history enabled"

source ~/.git-prompt.sh

PS1='\[\033[00;32m\]λ \[\033[0;90m\] \w\[\033[1;37m\]\e[38;5;214m$(__git_ps1) \[\033[0;33m\] \$\[\033[0;00m\] '

alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias list="tree -L 1"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1

