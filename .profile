# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

EDITOR="vim"

alias aptup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias ls="ls -hN --color=auto --group-directories-first"
alias l="ls -la"
alias cp="cp -v"
alias grep="grep --color=auto"
alias cls="clear && clear"

alias yt="youtube-dl -i --add-metadata"

function joinstr() {
	str="'$*'"
	echo "$str"
}

function ff() {
	str=$(joinstr $*)
	str=$(echo "$str" | sed -e 's/\s/\*/g' -e "s/'//g")
	find . -type f -ipath "*$str*"
}
