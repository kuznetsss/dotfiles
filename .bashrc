#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTSIZE=10000
export HISTCONTROL=ignoredups
set -o vi

if [ ! -n "$SSH_TTY" ]; then
	PS1='\u \W \$ '
	PS2='> '
else
	PS1='\u@\h \W SSH \$ '
	PS2='SSH > '
fi

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
