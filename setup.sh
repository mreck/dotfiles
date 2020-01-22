DOTFILES=$HOME/dotfiles

ln -sfv $DOTFILES/.tmux.conf $HOME/.tmux.conf
ln -sfv $DOTFILES/.vimrc $HOME/.vimrc
ln -sfv $DOTFILES/.zshrc $HOME/.zshrc
ln -sfv $DOTFILES/.zprofile $HOME/.zprofile
ln -sfv $DOTFILES/.config/i3 $HOME/.config
ln -sfv $DOTFILES/emacs/init.el $HOME/.emacs.d/init.el
ln -sfv $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json
