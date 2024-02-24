export EDITOR='vim'
PROMPT='%F{green}%1~%f '

setopt APPEND_HISTORY # merges histories of all tabs
setopt HIST_IGNORE_ALL_DUPS # removes older identical commands
setopt HIST_REDUCE_BLANKS # removes superfluous blanks from commands
setopt NO_LIST_BEEP # turns off beeping for ambiguous completions

# Command aliases
alias cp='cp -i'
alias dq='diff -q'
alias e="${EDITOR}"
alias erc='vim -O ~/.zshrc ~/.zshrc_private'
alias fr='fgrep --exclude "*.swp" --exclude .DS_Store --exclude-dir .build --exclude-dir .git --exclude-dir node_modules --recursive'
alias gr='grep --exclude-dir .git --exclude-dir node_modules --recursive'
alias json='pbpaste | python3 -m json.tool'
alias lf='ls -1G'
alias mv='mv -i'
alias rmds='find . -name .DS_Store -type f -delete'

# Functions
d2i() { s2i "$(d2s "$1")"; }
d2s() { date -j -f '%a %b %d %T %Z %Y' "$1" '+%s'; }
i2d() { s2d "$(i2s "$1")"; }
i2s() { date -ju -f '%FT%TZ' "$1" '+%s'; }
s2d() { date -j -f '%s' "$1"; }
s2i() { date -ju -f '%s' "$1" '+%FT%TZ'; }
da() { diff -a "$1" "$2" | less; }

# Vi mode
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1 # speeds up normal-to-insert-mode transition

# Enable tab completion
autoload -Uz compinit && compinit

. ~/.zshrc_private
