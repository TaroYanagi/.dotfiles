# Source global definitions
#test -f /etc/bashrc && . /etc/bashrc

# User specific aliases and functions
set -o vi

export LANG=ja_JP.UTF-8
#export LANG=ja_JP.eucJP
#export PG_DUMP=/usr/pgsql-9.3

export PSQL_EDITOR='vim +"set syntax=sql" '
export HISTCONTROL=ignoredups
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:`npm bin`
export PATH=$PATH:~/MyInstall
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PS1='[\W]$(__git_ps1) \$ '

export HISTSIZE=9999
export EDITOR=vi
export CLICOLOR=1
export HISTCONTROL=ignoredups


# Mac
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
source /usr/local/Cellar/tmux/*/etc/bash_completion.d/tmux 

# CentOs
#source /usr/share/doc/*/contrib/completion/git-completion.bash
#source /etc/bash_completion.d/bash_completion_tmux.sh  
#source ~/.inputrc

alias ll="ls -ltr"
alias vi="vim"
alias h="history"
alias sc="screen"
alias less="less -N"
alias tmux="TERM=screen-256color-bce tmux"

function share_history {
    history -a
    history -c
    history -r
}

PROMPT_COMMAND='share_history'

shopt -u histappend

test "$TMUX" || tmux

#export DISPLAY=localhost:0.0
#sudo mount -t vboxsf Desktop ~/Desktop
