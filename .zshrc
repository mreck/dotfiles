# enable colors
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# save history
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.cache/zhistory"

# better autocomplete
autoload -Uz compinit
compinit

# use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# load aliases
source ~/configs/aliasrc

# load functions
source ~/configs/funcrc

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
