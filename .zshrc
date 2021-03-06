#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
bindkey -v
export SDKMAN_DIR="/Users/suzuki/.sdkman"
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:/Users/suzuki/.local/bin
export PATH=$PATH:/usr/local/bin/
export GIT_EDITOR=nvim
export GOPATH=$HOME/.go
export PATH=$HOME/.go/bin:$PATH
export ZPLUG_HOME=/usr/local/opt/zplug
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/Cellar/postgresql/10.4/bin/
export PATH=$PATH:$HOME/cloud_sql_proxy
export PATH=${0:A:h}/bin:$PATH
export XDG_CONFIG_HOME="$HOME/.config"
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
alias e='open /Applications/Emacs.app'
alias g='git'
alias tn='tmux new -s'
alias td='tmux kill-session -t'
alias tls='tmux ls'
alias ta='tmux a -t'
alias つらい='say 元気だして、まだやれるよ'
alias typora='open -a typora'
alias rechunk='source ~/.chunkwmrc'
alias startmongo='sudo mongod --dbpath /var/lib/mongodb --logpath /var/log/mongodb.log'
alias vim='nvim'

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
  $  "

 PROMPT2='[%n]'


 autoload -Uz vcs_info
 setopt prompt_subst
 zstyle ':vcs_info:git:*' check-for-changes true
 zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
 zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
 zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
 zstyle ':vcs_info:*' actionformats '[%b|%a]'
 precmd () { vcs_info }
 RPROMPT='${vcs_info_msg_0_}'

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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/suzuki/dev/issuehunt-cron-server/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/suzuki/dev/issuehunt-cron-server/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/suzuki/dev/issuehunt-cron-server/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/suzuki/dev/issuehunt-cron-server/node_modules/tabtab/.completions/sls.zsh

# OPAM configuration
. /Users/suzuki/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
