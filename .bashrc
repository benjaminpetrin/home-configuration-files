# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# allow local scoping
function .bashrc() {

##############
# VISUAL     #
##############

# Some color definitions
local black='\[\033[8;30m\]'
local red='\[\033[0;31m\]'
local green='\[\033[0;32m\]'
local yellow='\[\033[0;33m\]'
local blue='\[\033[0;34m\]'
local purple='\[\033[0;35m\]'
local cyan='\[\033[0;36m\]'
local grey='\[\033[0;37m\]'
local white='\[\033[1;37m\]'
local styleEnd='\[\033[0m\]'

# Prompt
export PS1="[$yellow\u$grey@$blue\h $cyan\w$grey]\$$styleEnd"

##############
# COMMANDS   #
##############

#default to vi command editing mode instead of emacs
set -o vi

# don't store duplicate consecutive entries in bash history
export HISTCONTROL=ignoreboth

# modify the CDPATH to include all directories in the home directory
# in addition to the current directory
export CDPATH=".:~"


} # end .bashrc
.bashrc
