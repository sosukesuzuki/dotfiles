export PATH="$HOME/.anyenv/bin:$PATH"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tool"

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

eval "$(anyenv init -)"
if [ -d ${HOME}/node_modules/.bin ]; then
    export PATH=${PATH}:${HOME}/node_modules/.bin
fi
