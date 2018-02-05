#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTSIZE=10000
export HISTCONTROL=ignoredups
set -o vi

PS1='\u \W \$ '
PS2='>'

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
