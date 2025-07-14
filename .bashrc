#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd'
alias cat='bat'
alias grep='grep --color=auto'
#PS1='[\u@\h \w]\ $ '
PS1='\[\e[1;32m\][\u@\h \[\e[1;34m\]\w\[\e[0m\]\[\e[1;32m\]]\n$\[\e[0m\] '


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
