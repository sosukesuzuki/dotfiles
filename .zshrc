#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
bindkey -v
export SDKMAN_DIR="/Users/suzuki/.sdkman"
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:/Users/suzuki/.local/bin
export GIT_EDITOR=emacs
export GOPATH=$HOME/.go
export PATH=$HOME/.go/bin:$PATH

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

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [%n] 👆 (> ω <)👆 $ "

 PROMPT2='[%n]'
