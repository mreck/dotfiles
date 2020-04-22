#!/bin/sh

__setup_clone_or_pull() {
	[ -d $2 ] && (cd "$2" && git pull) || git clone --depth 1 $1 $2
}

mkdir -p $HOME/.cache > /dev/null
mkdir -p $HOME/.config > /dev/null
mkdir -p $HOME/source > /dev/null

mkdir -p $HOME/.cache/less > /dev/null
mkdir -p $HOME/.cache/node > /dev/null

DOTFILES=$HOME/dotfiles

# vim
mkdir -p $HOME/.vim > /dev/null
mkdir -p $HOME/.cache/vim/undo > /dev/null
ln -sfv $DOTFILES/vim/vimrc $HOME/.vim/vimrc
ln -sfv $DOTFILES/vim/autoload $HOME/.vim/

# tmux
ln -sfv $DOTFILES/.tmux.conf $HOME/.tmux.conf

# alacritty
mkdir -p $HOME/.config/alacritty
ln -sfv $DOTFILES/config/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# zsh
mkdir -p $HOME/.config/zsh
ln -sfv $DOTFILES/.zshenv $HOME/.zshenv
ln -sfv $DOTFILES/config/zsh/.zshenv $HOME/.config/zsh/.zshenv
ln -sfv $DOTFILES/config/zsh/.zshrc $HOME/.config/zsh/.zshrc
__setup_clone_or_pull \
	https://github.com/zsh-users/zsh-autosuggestions \
	$HOME/.config/zsh/zsh-autosuggestions

# npm
mkdir -p $HOME/.cache/npm/cache > /dev/null
mkdir -p $HOME/.cache/npm/global > /dev/null
ln -sfv $DOTFILES/.npmrc $HOME/.npmrc

# git
ln -sfv $DOTFILES/.gitconfig $HOME/.gitconfig

# emacs
mkdir -p $HOME/.emacs.d > /dev/null
ln -sfv $DOTFILES/emacs/init.el $HOME/.emacs.d/init.el
ln -sfv $DOTFILES/emacs/init-packages.el $HOME/.emacs.d/init-packages.el

# mics
mkdir -p $HOME/.config/wget
ln -sfv $DOTFILES/config/wget/wgetrc $HOME/.config/wget/wgetrc

mkdir -p $HOME/.config/zathura
ln -sfv $DOTFILES/config/zathura/zathurarc $HOME/.config/zathura/zathurarc

ln -sfv $DOTFILES/config/i3 $HOME/.config
ln -sfv $DOTFILES/config/fish $HOME/.config
ln -sfv $DOTFILES/.bashrc $HOME/.bashrc
ln -sfv $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json
