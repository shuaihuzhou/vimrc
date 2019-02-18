if [ "$PS1" ]; then
	PS1='[\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\h\e[m \e[4m\w\e[m] \e[1;36m$PS1_INT\e[m\n\$'
fi

alias ls='ls -G'
alias ll='ls -l'
alias grep='grep --color'

export LC_ALL=en_US.UTF-8
export LANG=en.US.UTF-8

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
