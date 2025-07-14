#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd'
alias cat='bat'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
