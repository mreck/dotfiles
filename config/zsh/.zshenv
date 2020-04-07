export ZDOTDIR="$HOME/.config/zsh"

# default programs
export EDITOR="vim"
export READER="zathura"

# update PATH env variable
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "$HOME/.npm-global/bin" ] ; then
    PATH="$HOME/.npm-global/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$DOTFILES/scripts" ] ; then
    PATH="$DOTFILES/scripts:$PATH"
fi