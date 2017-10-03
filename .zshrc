#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
bindkey -v
export SDKMAN_DIR="/Users/suzuki/.sdkman"
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:/Users/suzuki/.local/bin
export GIT_EDITOR=emacs
export GOPATH=$HOME/.go
export PATH=$HOME/.go/bin:$PATH
export ZPLUG_HOME=/usr/local/opt/zplug
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
source $ZPLUG_HOME/init.zsh
setopt no_beep
autoload -U compinit
setopt auto_pushd
setopt pushd_ignore_dups
setopt nolistbeep
setopt auto_cd
setopt auto_param_slash
setopt auto_param_keys
setopt brace_ccl

compinit

function cd() {
  builtin cd $@ && ls;
}

alias boost='cd ~/boostnoteapp'
alias e='emacs'
alias g='git'
alias tn='tmux new -s'
alias td='tmux kill-session -t'
alias tls='tmux ls'
alias ta='tmux a -t'
alias つらい='say 元気だして、まだやれるよ'


PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [%n] 👆 (> ω <)👆 $ "

 PROMPT2='[%n]'

 RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

 autoload -Uz vcs_info
 setopt prompt_subst
 zstyle ':vcs_info:git:*' check-for-changes true
 zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
 zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
 zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
 zstyle ':vcs_info:*' actionformats '[%b|%a]'
 precmd () { vcs_info }
 RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

function peco-src () {
    local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
}

zle -N peco-src
bindkey '^]' peco-src
zle -N peco-history-selection
bindkey '^R' peco-history-selection


source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

if [ -d $HOME/.anyenv ]
then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
fi

