#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

#PS1='[\u@\h \W]\$ '

# {hh:mm:ss @ day-of-week mon day}
# [username @ host dir]$ 
export PS1="\[\033[38;5;220m\]{\[$(tput sgr0)\]\[\033[38;5;214m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;75m\]@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;220m\]\d}\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;40m\][\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;75m\]@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;40m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;40m\]\W]\[$(tput sgr0)\]\[\033[38;5;10m\] ($WINDOW) \\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

case ${TERM} in
  xterm*|xterm-256color|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
source /usr/share/git/completion/git-completion.bash

#alias ls='ls --color=auto'
#alias lsd='ls -l | grep '^dr''
alias ls='lsd'
alias vi='vim'
alias grep='grep --color=auto'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export GOPATH=$HOME/go
export PATH="$PATH:$HOME/bin:$HOME/.rvm/bin:$GOPATH/bin"

export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export XDG_CONFIG_HOME="$HOME/.config"

eval `keychain --eval --agents ssh id_dsa id_rsa id_ecdsa`
setxkbmap -option "ctrl:swapcaps"

GPG_TTY=$(tty)
export GPG_TTY

