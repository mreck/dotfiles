#!/bin/sh

mkdir -p $HOME/.cache > /dev/null
mkdir -p $HOME/.config > /dev/null

DOTFILES=$HOME/dotfiles

# vim
mkdir -p $HOME/.vim > /dev/null
mkdir -p $HOME/.cache/vim/undo > /dev/null
ln -sfv $DOTFILES/vim/vimrc $HOME/.vim/vimrc
ln -sfv $DOTFILES/vim/autoload $HOME/.vim/

ln -sfv $DOTFILES/.tmux.conf $HOME/.tmux.conf

# alacritty
mkdir -p $HOME/.config/alacritty
ln -sfv $DOTFILES/config/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

# zsh
mkdir -p $HOME/.config/zsh
ln -sfv $DOTFILES/.zshenv $HOME/.zshenv
ln -sfv $DOTFILES/config/zsh/.zshenv $HOME/.config/zsh/.zshenv
ln -sfv $DOTFILES/config/zsh/.zshrc $HOME/.config/zsh/.zshrc

ln -sfv $DOTFILES/config/i3 $HOME/.config
ln -sfv $DOTFILES/config/fish $HOME/.config
ln -sfv $DOTFILES/.bashrc $HOME/.bashrc
ln -sfv $DOTFILES/emacs/init.el $HOME/.emacs.d/init.el
ln -sfv $DOTFILES/emacs/init-packages.el $HOME/.emacs.d/init-packages.el
ln -sfv $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json
