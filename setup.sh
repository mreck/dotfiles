#!/bin/sh

mkdir -p $HOME/.cache > /dev/null
mkdir -p $HOME/.config > /dev/null

DOTFILES=$HOME/dotfiles

# vim
mkdir -p $HOME/.vim > /dev/null
ln -sfv $DOTFILES/.vim/vimrc $HOME/.vim/vimrc
ln -sfv $DOTFILES/.vim/autoload $HOME/.vim/

ln -sfv $DOTFILES/.tmux.conf $HOME/.tmux.conf

ln -sfv $DOTFILES/.zshrc $HOME/.zshrc
ln -sfv $DOTFILES/.zprofile $HOME/.zprofile
ln -sfv $DOTFILES/.config/i3 $HOME/.config
ln -sfv $DOTFILES/.config/fish $HOME/.config
ln -sfv $DOTFILES/.bashrc $HOME/.bashrc
ln -sfv $DOTFILES/emacs/init.el $HOME/.emacs.d/init.el
ln -sfv $DOTFILES/emacs/init-packages.el $HOME/.emacs.d/init-packages.el
ln -sfv $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json
