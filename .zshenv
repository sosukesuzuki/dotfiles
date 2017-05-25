export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
if [ -d ${HOME}/node_modules/.bin ]; then
    export PATH=${PATH}:${HOME}/node_modules/.bin
fi
