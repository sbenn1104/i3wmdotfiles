HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history



alias ots='ssh opstechit-na.aka.corp.amazon.com'
alias steven='ssh steven-desktop.aka.corp.amazon.com'
alias printer='ssh -D 8080 steven-desktop.aka.corp.amazon.com'
alias cam='ssh -fND9090 fc-vision-mge3-101.mge3.amazon.com'
alias ll='exa --header --group --long --all --icons --group-directories-first'
alias devbox='ssh -J steven-desktop.aka.corp.amazon.com steven-devbox.mge3.amazon.com'
alias dcv='py dcv-cdd.py connect steven-desktop.aka.corp.amazon.com'
alias sz="source ~/.zshrc"
alias cls="clear"
alias m="mwinit -o"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
