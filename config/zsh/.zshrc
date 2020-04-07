# enable colors
autoload -U colors && colors

# custom prompt
PS1="%B%{$fg[grey]%}[$(date "+%H:%M")] %{$fg[blue]%}%n%{$fg[white]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~ %b%{$fg[red]%}$%{$reset_color%} "

# save history
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.cache/zhistory"

# better autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# include hidden files in autocomplete
_comp_options+=(globdots)

export KEYTIMEOUT=1

# ctrl+z toggle fg
function ctrlz() {
	if [[ $#BUFFER == 0 ]]
	then
		fg >/dev/null 2>&1 && zle redisplay
	else
		zle push-input
	fi
}
zle -N ctrlz
bindkey '^Z' ctrlz

# use fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# load aliases
source $DOTFILES/aliasrc

# load zsh-autosuggestions
source $DOTFILES/submodules/zsh-autosuggestions/zsh-autosuggestions.zsh

# load zsh-syntax-highlighting; should be last.
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
