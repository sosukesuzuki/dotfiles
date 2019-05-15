colors

bindkey -v
setopt no_beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt nolistbeep
setopt auto_cd
setopt auto_param_slash
setopt auto_param_keys
setopt brace_ccl

autoload -U compinit
compinit

# cdのときにlsも実行する
function cd() {
  builtin cd $@ && ls;
}

alias tn='tmux new -s'
alias td='tmux kill-session -t'
alias tls='tmux ls'
alias ta='tmux a -t'
alias vim='nvim'

# 左のプロンプトにユーザーネームとカレントディレクトリを表示する
PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
  $  "

PROMPT2='[%n]'

# 右のプロンプトにGitの情報を表示する
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
