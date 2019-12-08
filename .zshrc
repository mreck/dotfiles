# enable colors
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#save history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE='~/.cache/zsh/history'

# better autocomplete
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' menu select
zmodload zsh/complist
compinit

# use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# load aliases
source ~/configs/aliasrc

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

