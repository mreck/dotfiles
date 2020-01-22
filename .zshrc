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
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# load aliases
source $HOME/configs/aliasrc

# load functions
source $HOME/configs/funcrc

# load zsh-autosuggestions
source $HOME/configs/submodules/zsh-autosuggestions/zsh-autosuggestions.zsh

# load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
