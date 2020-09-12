PROMPT='%F{green}%1~%f '

setopt APPEND_HISTORY # merges histories of all tabs
setopt HIST_IGNORE_ALL_DUPS # removes older identical commands
setopt HIST_REDUCE_BLANKS # removes superfluous blanks from commands
setopt NO_LIST_BEEP # turns off beeping for ambiguous completions

# Command Aliases
alias cp='cp -i'
alias fr='fgrep --exclude .DS_Store --exclude "*.swp" --exclude-dir .git --exclude-dir node_modules --recursive'
alias gr='grep --exclude-dir .git --exclude-dir node_modules --recursive'
alias json='pbpaste | python -m json.tool'
alias mv='mv -i'
alias nt='vim -c "r !date" -c "cd ~/notes" -c "normal Go" +startinsert ~/notes/notes-`date +'%Y-%m-%d-%H-%M-%S-%Z'`.txt'

# Note: The command below replaces "foo" with "bar" in all files in project
# fr -l foo . | xargs sed -e 's/foo/bar/g' -i ''

# Vi mode
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1 # speeds up normal-to-insert-mode transition

source ~/.zshrc_private
