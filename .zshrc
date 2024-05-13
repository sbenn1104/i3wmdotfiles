HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history


alias t="tmux"
alias ll='exa --header --group --long --all --icons --group-directories-first'
alias sz="source ~/.zshrc"
alias cls="clear"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
