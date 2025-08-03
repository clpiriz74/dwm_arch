
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd'
alias cat='bat'
alias grep='grep --color=auto'

if [[ $EUID -eq 0 ]]; then
    # Prompt para root (rojo)
    PS1='\[\e[1;31m\][\u@\h \[\e[1;34m\]\w\[\e[0m\]\[\e[1;31m\]]\n# \[\e[0m\]'
else
    # Prompt para usuarios normales (verde)
    PS1='\[\e[1;32m\][\u@\h \[\e[1;34m\]\w\[\e[0m\]\[\e[1;32m\]]\n$ \[\e[0m\]'
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
