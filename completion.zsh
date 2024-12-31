# Load more completions
fpath=($ZDOTDIR/Completion $fpath)

# Should be called before compinit
zmodload zsh/complist

# Use hjlk in menu selection (during completion)
# Doesn't work well with interactive mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

autoload -Uz compinit && compinit

setopt menu_complete # Automatically highlight first element of completion menu
setopt list_packed # The completion menu takes less space
# setopt list_rows_first # Matches are sorted in rows instead of columns

# Define completers
zstyle ':completion:*' completer _extensions _complete _ignored

# Allow you to select in a menu
# zstyle ':completion:*' menu select

# Use cache for commands using cache
zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path "$ZDOTDIR/.zcompcache"

# Files will be ordered by date of modification
zstyle ':completion:*' file-sort date

zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

# Required for completion to be in good groups (named after the tags)
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands

# Make matches case insensitive
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' keep-prefix true # Does not work without additional setup
