#
# ~/.bashrc
#
export LANG=en_US.UTF-8
export LC_MESSAGES=C

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias python=/usr/bin/python2.7
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias vi=vim
alias ll='ls -lhA'
alias top=htop


#PS1='[\u@\h \W]\$ '
PS1="\n[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\] [\\@] -> \[\033[0m\]"

#Fixing locale
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LANG=en_US.UTF-8

