export EDITOR='vim'
export TMPDIR='/tmp'

# update PATH env variable
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.npm-global/bin" ] ; then
    PATH="$HOME/.npm-global/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/configs/scripts" ] ; then
    PATH="$HOME/configs/scripts:$PATH"
fi
