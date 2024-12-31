#!/usr/bin/env zsh

# +––––––––+
# | PROMPT |
# +––––––––+

source "$XDG_CONFIG_HOME/powerlevel10k/powerlevel10k.zsh-theme"
source "$ZDOTDIR/p10k.zsh"

eval "$(dircolors)"

# +–––––––––+
# | OPTIONS |
# +–––––––––+

bindkey -v
unsetopt beep

# History
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt inc_append_history_time

# +–––––––––+
# | SCRIPTS |
# +–––––––––+

source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/completion.zsh"

# +–––––––––––+
# | VARIABLES |
# +–––––––––––+

# EDITOR
export EDITOR="vim"
export VISUAL="vim"
export GIT_EDITOR="$EDITOR"

add-path "$HOME/.npm-global/bin"
