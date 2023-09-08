autoload -Uz promptinit; promptinit; prompt pure
autoload -Uz compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz colors; colors
zstyle ':completion:*' list-colors "${LS_COLORS}" # 補完候補に色付け
zstyle ':completion:*' menu select # 補完候補を矢印で選択できる
setopt correct
setopt auto_cd
setopt autopushd
setopt pushd_ignore_dups
setopt nobeep
setopt markdirs
setopt no_autoremoveslash

alias -g L='|less'
alias -g G='|grep'
alias ls='ls --color=auto'
alias lss='ls -lht --color=auto'
alias la='ls -a --color=auto'

if type "git" >/dev/null; then
    alias gs='git status'
fi
