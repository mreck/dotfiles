# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

EDITOR="vim"

alias aptup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias l="ls -lah"
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
