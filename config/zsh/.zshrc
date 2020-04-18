# enable colors
autoload -U colors && colors

# custom prompt
PS1="[%{$fg[yellow]%}$(date "+%H:%M")%{$fg[white]%}] %B%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~ %b%{$fg[red]%}$%{$reset_color%} "

# save history
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.cache/zhistory"

# behave more like vim
bindkey -v

# better autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# include hidden files in autocomplete
_comp_options+=(globdots)

export KEYTIMEOUT=1

# open command in editor (ctrl+e)
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

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

# previous/next commands (ctrl+p/ctrl+n)
bindkey '^p' up-line-or-history
bindkey '^n' down-line-or-history

# shell greeting
function greeting() {
	echo
	uname -ro |                  awk '{print " OS: " $0}'
	whoami    | sed 's/^up //' | awk '{print " User: " $0}'
	uptime -p | sed 's/^up //' | awk '{print " Uptime: " $0}'
	uname -n  |                  awk '{print " Hostname: " $0}'
	echo
	echo " Disk Usage:"
	echo
	df -lh \
		| grep -E '/dev/(sd|mapper|xvda)' \
		| awk '{print "\t", $6, $3 " / " $2, $5}' \
		| column -t
	echo
	echo " Network:"
	echo
	# http://tdt.rocks/linux_network_interface_naming.html
	ip addr show up scope global \
		| grep -E ': <|inet' \
		| sed \
			-e 's/^[[:digit:]]\+: //' \
			-e 's/: <.*//' \
			-e 's/.*inet[[:digit:]]* //' \
			-e 's/\/.*//' \
		| awk 'BEGIN {i=""} /\.|:/ {print i " " $0; next} // {i = $0}' \
		| sort \
		| column -t
	echo
}
greeting

# use fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# load aliases
source $DOTFILES/aliasrc

# load zsh-autosuggestions
source $DOTFILES/submodules/zsh-autosuggestions/zsh-autosuggestions.zsh

# load zsh-syntax-highlighting; should be last.
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
