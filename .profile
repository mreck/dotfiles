# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

EDITOR="vim"

HISTSIZE= HISTFILESIZE= #infinite history

alias aptup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias ls="ls -hN --color=auto --group-directories-first"
alias l="ls -la"
alias cls="clear && clear"

function joinstr() {
	str="'$*'"
	echo "$str"
}

function ff() {
	str=$(joinstr $*)
	str=$(echo "$str" | sed -e 's/\s/\*/g' -e "s/'//g")
	find . -type f -ipath "*$str*"
}
